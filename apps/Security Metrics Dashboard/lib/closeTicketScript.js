// Close selected ticket and update securityDataVar 
const sel = securityTable.selectedSourceRow;
if (!sel) {throw new Error('Select a ticket row to close.');}
const reason = closeReasonSelect.value;
if (!reason) {throw new Error('Please select a close reason.');}
const notes = closeNotes.value?.trim() || '';

const data = securityDataVar.value || [];
const idx = data.findIndex((r) => r.id === sel.id);
if (idx === -1) {throw new Error('Selected ticket not found.');}

const updated = { ...data[idx], status: 'Closed', closeReason: reason, closeNotes: notes };
const next = [...data];
next[idx] = updated;
securityDataVar.setValue(next);
return updated;