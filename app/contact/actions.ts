"use server";

import { redirect } from "next/navigation";
import { Resend } from "resend";

function sanitize(str: string) {
  return str.replace(/\s+/g, " ").trim();
}

export async function sendMessage(formData: FormData) {
  const email = sanitize(String(formData.get("email") || ""));
  const subject = sanitize(String(formData.get("subject") || ""));
  const body = String(formData.get("body") || "");

  if (!email || !subject || !body) {
    redirect("/contact?error=missing");
  }

  const emailRegex = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
  if (!emailRegex.test(email)) {
    redirect("/contact?error=email");
  }

  const resend = new Resend(process.env.RESEND_API_KEY);

  try {
    await resend.emails.send({
      from: process.env.CONTACT_FROM || "onboarding@resend.dev",
      to: process.env.CONTACT_TO!,
      replyTo: email,
      subject,
      text: body,
    });
  } catch (e) {
    console.error("Resend error:", e);
    return redirect("/contact?error=send");
  }

  redirect("/contact?sent=1");
}
