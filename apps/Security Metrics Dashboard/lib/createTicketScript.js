// Create a new ticket from modal inputs and append to securityDataVar
const tool = ticketToolSelect.value;
const risk = ticketRiskSelect.value;
const description = ticketDescription.value?.trim();
if (!tool || !risk || !description) {
  throw new Error('Please select a tool, a risk level, and enter a description.');
}

const existing = securityDataVar.value || [];
const maxId = existing.reduce((m, r) => Math.max(m, r.id || 0), 0);
const id = maxId + 1;
const today = new Date().toISOString().slice(0, 10);
const ticketId = `SEC-${1000 + id}`;

const newRow = { id, tool, risk, description, date: today, status: 'Open', ticketId };
const next = [...existing, newRow];
securityDataVar.setValue(next);
return newRow;