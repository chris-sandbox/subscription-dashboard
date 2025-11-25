const data = {{ securityDataVar.value }} || [];
return data.filter((r) => r.risk === 'High').length;