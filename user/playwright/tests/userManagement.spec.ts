import { expect, test } from '@playwright/test';
import dotenv from "dotenv";

dotenv.config();

test.describe("User Management", () => {
  test("opens the app", async ({ page }) => {
    await page.goto("https://testing.cheastycloud.retool.com/auth/login");

    await page
      .getByPlaceholder("name@company.com")
      .fill(`${process.env.PLAYWRIGHT_USERNAME}`, { timeout: 10000 });

    await page
      .getByPlaceholder("Password")
      .fill(`${process.env.PLAYWRIGHT_PASSWORD}`, { timeout: 10000 });

    await page.getByText(/^Sign in$/).click();
    await page.getByRole('link', { name: 'Apps' }).click();

    await page.goto(
      "https://testing.cheastycloud.retool.com/apps/b8c1eb8c-cd21-11ef-bc45-8393403a9a20/List%20View%20Demo/defaultPage",
      { timeout: 100000 }
    );

    await page
    .getByPlaceholder("Search by name")
    .fill("eva", { timeout: 5000 });

    const gridContainer = page.getByTestId("RetoolGrid:listView1");

    await expect(gridContainer.getByRole("heading")).toHaveCount(2);
    await expect(gridContainer).toContainText("Eva Noyce");
    await expect(gridContainer).toContainText("Eva Lu Ator");
  });
});


