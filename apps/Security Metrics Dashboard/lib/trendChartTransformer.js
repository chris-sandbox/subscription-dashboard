// Aggregate counts by date and risk for last 14 days
const data = {{ securityDataVar.value }} || [];
// Build date range
const today = new Date();
const days = Array(14).fill(null).map((_, i) => {
  const d = new Date();
  d.setDate(today.getDate() - (13 - i));
  return d.toISOString().slice(0, 10);
});
const risks = ['High', 'Medium', 'Low'];
const series = risks.map((risk) => ({ name: risk, data: days.map(() => 0) }));
const dayIndex = Object.fromEntries(days.map((d, idx) => [d, idx]));
for (const row of data) {
  const idx = dayIndex[row.date];
  if (idx != null) {
    const sIdx = risks.indexOf(row.risk);
    if (sIdx >= 0) series[sIdx].data[idx] += 1;
  }
}
return { categories: days, series };