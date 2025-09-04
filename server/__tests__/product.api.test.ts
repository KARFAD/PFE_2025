import request from "supertest";
import app from "../app"; // ton app Express ou handler Next.js
import { prisma } from "../prisma"; // selon ton projet

describe("API /products", () => {
  let categoryId: string;

  beforeAll(async () => {
    // Crée une catégorie pour les tests
    const category = await prisma.category.create({
      data: { name: "Test Category" },
    });
    categoryId = category.id;
  });

  afterAll(async () => {
    // Supprime la catégorie après tests
    await prisma.category.deleteMany({ where: { id: categoryId } });
  });

  it("devrait créer un produit avec succès", async () => {
    const newProduct = {
      title: "Laptop Test",
      slug: "laptop-test",
      manufacturer: "Dell",
      price: 1200,
      inStock: 1,
      mainImage: "laptop.jpg",
      description: "Très bon laptop",
      categoryId: categoryId, // maintenant valide
    };

    const response = await request(app)
      .post("/api/products")
      .send(newProduct)
      .set("Accept", "application/json");

    expect(response.status).toBe(201);
    expect(response.body).toHaveProperty("id");
    expect(response.body.title).toBe(newProduct.title);
  });

  it("devrait renvoyer une erreur si title est manquant", async () => {
    const invalidProduct = {
      slug: "laptop-test",
      manufacturer: "Dell",
      price: 1200,
      inStock: 1,
      mainImage: "laptop.jpg",
      description: "Très bon laptop",
      categoryId: categoryId,
    };

    const response = await request(app)
      .post("/api/products")
      .send(invalidProduct)
      .set("Accept", "application/json");

    expect(response.status).toBe(400); // ton backend doit renvoyer 400 si title manquant
    expect(response.body).toHaveProperty("error");
  });
});
