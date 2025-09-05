import NextAuth from "next-auth";
import { Account, User as AuthUser } from "next-auth";
import CredentialsProvider from "next-auth/providers/credentials";
import bcrypt from "bcryptjs";
import prisma from "@/utils/db";
import { nanoid } from "nanoid";

const authOptions: any = {
  providers: [
    CredentialsProvider({
      id: "credentials",
      name: "Credentials",
      credentials: {
        email: { label: "Email", type: "text" },
        password: { label: "Password", type: "password" },
      },
      authorize: async (credentials) => {
        if (!credentials?.email || !credentials?.password) return null;

        try {
          const user = await prisma.user.findUnique({
            where: { email: credentials.email },
          });

          if (!user) return null;

          const isPasswordCorrect = await bcrypt.compare(
            credentials.password,
            user.password!
          );
          if (!isPasswordCorrect) return null;

          return user;
        } catch (err) {
          console.error("Error in authorize:", err);
          return null;
        }
      },
    }),
    // Tu pourras réactiver GithubProvider / GoogleProvider plus tard si besoin
  ],
  callbacks: {
    async signIn({ user, account }: { user: AuthUser; account: Account }) {
      if (account?.provider === "credentials") {
        return true;
      }
      // Tu peux réactiver ton code Github/Google ici si nécessaire
    },
  },
  session: { strategy: "jwt" },
  secret: process.env.NEXTAUTH_SECRET,
};

const handler = NextAuth(authOptions);

// ✅ Next.js App Router attend uniquement ça
export { handler as GET, handler as POST };
