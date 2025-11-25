// Documentation:
//   Generates 24 mock security findings distributed across the last 14 days
//   using random tools, risk levels, statuses, and descriptions. Stores the
//   generated data in securityDataVar state.
// Returns:
//   Array<{
//     id: number,
//     tool: string,
//     risk: string,
//     description: string,
//     date: string,
//     status: string,
//     ticketId: string
//   }> // Array of mock security findings

const tools = toolOptionsVar.value.map((t) => t.value);
const risks = ['High', 'Medium', 'Low'];
const statuses = ['Open', 'Closed'];
const today = new Date();

function randomDateWithin14Days() {
  const daysAgo = Math.floor(Math.random() * 14);
  const d = new Date(today);
  d.setDate(today.getDate() - daysAgo);
  return d.toISOString().slice(0, 10);
}

const descriptions = [
'Outdated library with known CVE',
'SQL injection risk in input field',
'Excessive privileges detected',
'Unencrypted traffic detected',
'Missing HTTP security headers',
'Dependency vulnerability',
'XSS vector in comments',
'Weak password policy',
'Open port exposed to internet',
'TLS configuration issue'];


const data = Array(24).fill(null).map((_, i) => {
  const tool = tools[Math.floor(Math.random() * tools.length)];
  const risk = risks[Math.floor(Math.random() * risks.length)];
  const status = statuses[Math.floor(Math.random() * statuses.length)];
  const id = i + 1;
  return {
    id,
    tool,
    risk,
    description: descriptions[Math.floor(Math.random() * descriptions.length)],
    date: randomDateWithin14Days(),
    status,
    ticketId: `SEC-${1000 + id}` };

});

securityDataVar.setValue(data);
return data;