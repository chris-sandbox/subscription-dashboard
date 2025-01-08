
import { chromium } from "@playwright/test";
import dotenv from "dotenv";

dotenv.config();

export default async function globalSetup() {
  const browser = await chromium.launch();
  const page = await browser.newPage();
  await page.goto("https://testing.cheastycloud.retool.com/auth/login");
  await page
    .getByPlaceholder("name@company.com")
    .fill(`${process.env.PLAYWRIGHT_USERNAME}`); //{process.env.PLAYWRIGHT_USERNAME}
  await page
    .getByPlaceholder("Password")
    .fill(`${process.env.PLAYWRIGHT_PASSWORD}`); //{process.env.PLAYWRIGHT_PASSWORD}
  await page.getByText(/^Sign in$/).click();
  // await page.getByText("Welcome to Retool").click();
  const cookies = await page.context().cookies();
  process.env.COOKIES = JSON.stringify(cookies); // set this env var to store the authed page session
  await browser.close();
}