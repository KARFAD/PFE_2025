import React from "react";
import { SectionTitle } from "@/components";

export default function AboutPage() {
  return (
    <div className="bg-white">
      {/* Section Title */}
      <SectionTitle title="About Us" path=" " />

      {/* Hero */}
      <section>
        <div className="hero min-w-screen bg-base-200 py-20">
          <div className="hero-content flex-col lg:flex-row-reverse">
            <div>
              <h1 className="text-5xl font-bold">We Power Your Electronics Needs</h1>
            <p className="py-6 text-lg">
              Our Electronics Shop is dedicated to providing top-notch electronics products
              with fast delivery, competitive pricing, and excellent customer service.
            </p>
          </div>
        </div>
      </div>
      </section>

      {/* Mission / Our Story */}
      <section id="mission" className="py-20 bg-base-100">
        <div className="max-w-5xl mx-auto px-6 text-center">
          <h2 className="text-4xl font-semibold mb-6">Our Mission</h2>
          <p className="text-lg text-gray-700 mb-10">
            Our goal is to make electronics shopping easy, fast, and reliable. From the latest
            gadgets to essential devices, we provide a seamless online experience backed
            by a dedicated support team.
          </p>

          <div className="grid grid-cols-1 md:grid-cols-3 gap-8">
            <div className="card bg-base-200 shadow-xl p-6">
              <h3 className="text-2xl font-bold mb-2">Quality Products</h3>
              <p>We ensure that every product meets high-quality standards and reliability.</p>
            </div>
            <div className="card bg-base-200 shadow-xl p-6">
              <h3 className="text-2xl font-bold mb-2">Fast Delivery</h3>
              <p>Your orders are processed quickly and delivered right to your doorstep.</p>
            </div>
            <div className="card bg-base-200 shadow-xl p-6">
              <h3 className="text-2xl font-bold mb-2">Customer Support</h3>
              <p>Our support team is ready to assist you with any questions or issues.</p>
            </div>
          </div>
        </div>
      </section>

      {/* Team */}
      <section className="py-20 bg-base-200">
        <div className="max-w-5xl mx-auto px-6 text-center">
          <h2 className="text-4xl font-semibold mb-10">Meet Our Team</h2>
          <div className="grid grid-cols-1 md:grid-cols-3 gap-8">
            <div className="card shadow-xl p-6">
              <img
                src="https://images.unsplash.com/photo-1595152772835-219674b2a8a6?auto=format&fit=crop&w=400&q=80"
                alt="Team member"
                className="rounded-full w-32 h-32 mx-auto mb-4"
              />
              <h3 className="text-xl font-bold">Alice Johnson</h3>
              <p className="text-gray-600">CEO & Founder</p>
            </div>
            <div className="card shadow-xl p-6">
              <img
                src="https://images.unsplash.com/photo-1595152772835-219674b2a8a6?auto=format&fit=crop&w=400&q=80"
                alt="Team member"
                className="rounded-full w-32 h-32 mx-auto mb-4"
              />
              <h3 className="text-xl font-bold">Mark Smith</h3>
              <p className="text-gray-600">CTO</p>
            </div>
            <div className="card shadow-xl p-6">
              <img
                src="https://images.unsplash.com/photo-1595152772835-219674b2a8a6?auto=format&fit=crop&w=400&q=80"
                alt="Team member"
                className="rounded-full w-32 h-32 mx-auto mb-4"
              />
              <h3 className="text-xl font-bold">Sarah Lee</h3>
              <p className="text-gray-600">Lead Designer</p>
            </div>
          </div>
        </div>
      </section>

      {/* Stats / Numbers */}
      <section className="py-20 bg-base-100">
        <div className="max-w-5xl mx-auto px-6 text-center">
          <h2 className="text-4xl font-semibold mb-10">Our Achievements</h2>
          <div className="grid grid-cols-1 md:grid-cols-4 gap-8">
            <div className="stat shadow-xl p-6 rounded-lg bg-base-200">
              <div className="stat-value text-3xl">1000+</div>
              <div className="stat-desc">Products Sold</div>
            </div>
            <div className="stat shadow-xl p-6 rounded-lg bg-base-200">
              <div className="stat-value text-3xl">500+</div>
              <div className="stat-desc">Happy Customers</div>
            </div>
            <div className="stat shadow-xl p-6 rounded-lg bg-base-200">
              <div className="stat-value text-3xl">120+</div>
              <div className="stat-desc">Daily Orders</div>
            </div>
            <div className="stat shadow-xl p-6 rounded-lg bg-base-200">
              <div className="stat-value text-3xl">5</div>
              <div className="stat-desc">Years in Business</div>
            </div>
          </div>
        </div>
      </section>
    </div>
  );
}
