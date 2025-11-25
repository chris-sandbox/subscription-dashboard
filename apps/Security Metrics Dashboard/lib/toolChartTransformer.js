// Aggregate risk counts by tool
const data = {{ securityDataVar.value }} || [];
const tools = {};
for (const row of data) {
  tools[row.tool] = tools[row.tool] || { tool: row.tool, High: 0, Medium: 0, Low: 0 };
  tools[row.tool][row.risk]++;
}
const arr = Object.values(tools);
return {
  categories: arr.map((r) => r.tool),
  series: [
  { name: 'High', data: arr.map((r) => r.High) },
  { name: 'Medium', data: arr.map((r) => r.Medium) },
  { name: 'Low', data: arr.map((r) => r.Low) }] };