<GlobalFunctions>
  <SqlQueryUnified
    id="addNewRow"
    actionType="INSERT"
    changesetIsObject={true}
    changesetObject="{{ CreateUserForm1.data }}"
    editorMode="gui"
    errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
    resourceDisplayName="retool_db"
    resourceName="f5a32415-dffb-461e-aecd-61b459718be2"
    resourceTypeOverride=""
    runWhenModelUpdates={false}
    tableName="sample_users"
    transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
    workflowBlockPluginId={null}
  >
    <Event
      event="success"
      method="refresh"
      params={{ ordered: [] }}
      pluginId="dataTable"
      type="widget"
      waitMs="0"
      waitType="debounce"
    />
    <Event
      event="success"
      method="selectRow"
      params={{
        ordered: [
          {
            options: {
              ordered: [
                { mode: "index" },
                { indexType: "display" },
                { index: "{{dataTable.data.length-1}}" },
                { key: null },
              ],
            },
          },
        ],
      }}
      pluginId="dataTable"
      type="widget"
      waitMs="0"
      waitType="debounce"
    />
  </SqlQueryUnified>
  <SqlQueryUnified
    id="updateRow"
    actionType="UPDATE_BY"
    changesetIsObject={true}
    changesetObject="{{ UpdateUserForm1.data }}"
    doNotThrowOnNoOp={true}
    editorMode="gui"
    errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
    filterBy={
      '[{"key":"id","value":"{{ dataTable.selectedRow.id }}","operation":"="}]'
    }
    resourceDisplayName="retool_db"
    resourceName="f5a32415-dffb-461e-aecd-61b459718be2"
    resourceTypeOverride=""
    runWhenModelUpdates={false}
    tableName="sample_users"
    transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
    workflowBlockPluginId={null}
  >
    <Event
      event="success"
      method="refresh"
      params={{ ordered: [] }}
      pluginId="dataTable"
      type="widget"
      waitMs="0"
      waitType="debounce"
    />
    <Event
      event="success"
      method="selectRow"
      params={{
        ordered: [
          {
            options: {
              ordered: [
                { mode: "key" },
                { indexType: "display" },
                { index: null },
                { key: "{{ dataTable.selectedRow.id }}" },
              ],
            },
          },
        ],
      }}
      pluginId="dataTable"
      type="widget"
      waitMs="0"
      waitType="debounce"
    />
  </SqlQueryUnified>
</GlobalFunctions>
