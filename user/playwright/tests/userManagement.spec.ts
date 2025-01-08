import { expect } from "@playwright/test";
import { test } from "../fixtures/authedPage";

console.log(test);
test.describe("User Management", () => {
  test("opens the app", async ({ authedPage }) => {
    await authedPage.goto(
      "https://testing.cheastycloud.retool.com/apps/b8c1eb8c-cd21-11ef-bc45-8393403a9a20/List%20View%20Demo/defaultPage"
    );
    await authedPage
    .getByPlaceholder(/Search by name/)
    .fill("eva", { timeout: 15000 });
    // const gridContainer = authedPage.getByTestId("RetoolGrid:listView1");

    // await expect(gridContainer.getByRole("heading")).toHaveCount(2);
    // await expect(gridContainer).toContainText("Eva Noyce");
    // await expect(gridContainer).toContainText("Eva Lu Ator");
  });
});

// what NOT to do:

// test.describe("User Management", () => {
//   test("opens the app", async ({ authedPage }) => {
//     await authedPage.goto(
//       "https://testing.cheastycloud.retool.com/apps/b8c1eb8c-cd21-11ef-bc45-8393403a9a20/List%20View%20Demo/defaultPage"
//     );
//     await authedPage.getByPlaceholder(/Search by name/).fill("eva");
  
//     await expect(authedPage.getByRole("heading", { name: /Eva/i })).toHaveCount(
//       2
//     );
//   });
// });