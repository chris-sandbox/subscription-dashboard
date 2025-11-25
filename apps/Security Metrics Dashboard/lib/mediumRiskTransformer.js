// Returns the count of medium risk items from security data
const data = {{ securityDataVar.value }} || [];
return data.filter((r) => r.risk === 'Medium').length;