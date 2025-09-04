"use client";

import React, { useEffect } from "react";
import { redirect, useSearchParams } from "next/navigation";
import { SectionTitle } from "@/components";
import { sendMessage } from "./actions"; // ✅ on importe l’action serveur

export default function ContactPage() {
  const searchParams = useSearchParams();

  useEffect(() => {
    const sent = searchParams.get("sent");
    const error = searchParams.get("error");

    if (sent) {
      setTimeout(() => alert("✅ Message envoyé avec succès !"));
      redirect("/contact"); // Pour nettoyer l'URL
    }

    if (error) {
      setTimeout(() => alert("❌ Erreur lors de l’envoi du message."));
    }
  }, [searchParams]);

  return (
    <div className="bg-white">
      <SectionTitle title="Contact Us" path=" " />
      <div className="mx-auto max-w-xl p-6">
        <form action={sendMessage} className="space-y-4">
          <div className="flex flex-col">
            <label>Email</label>
            <input
              name="email"
              type="email"
              required
              className="rounded-lg border p-2"
            />
          </div>

          <div className="flex flex-col">
            <label>Subject</label>
            <input
              name="subject"
              required
              className="rounded-lg border p-2"
            />
          </div>

          <div className="flex flex-col">
            <label>Message</label>
            <textarea
              name="body"
              required
              rows={6}
              className="rounded-lg border p-2"
            />
          </div>

          <button type="submit" className="rounded-2xl border px-4 py-2">
            Send
          </button>
        </form>
      </div>
    </div>
  );
}
