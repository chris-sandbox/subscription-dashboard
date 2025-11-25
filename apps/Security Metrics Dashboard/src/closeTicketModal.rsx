<ModalFrame
  id="closeTicketModal"
  footerPadding="8px 12px"
  headerPadding="8px 12px"
  hidden={true}
  hideOnEscape={true}
  isHiddenOnMobile={true}
  overlayInteraction={true}
  padding="8px 12px"
  showFooter={true}
  showHeader={true}
  showOverlay={true}
  size="medium"
>
  <Header>
    <Text
      id="closeTicketTitle"
      value="### Close Security Ticket"
      verticalAlign="center"
    />
    <Button
      id="closeCloseModal"
      ariaLabel="Close"
      horizontalAlign="right"
      iconBefore="bold/interface-delete-1"
      style={{ map: { border: "transparent" } }}
      styleVariant="outline"
    >
      <Event
        event="click"
        method="run"
        params={{ map: { src: "closeTicketModal.setHidden(true);" } }}
        pluginId=""
        type="script"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
  </Header>
  <Body>
    <Text
      id="closeTicketInfo"
      value="{{ securityTable.selectedSourceRow ? `**Selected:** ${securityTable.selectedSourceRow.ticketId} — ${securityTable.selectedSourceRow.tool} (${securityTable.selectedSourceRow.risk})` : 'Select a row to close its ticket' }}"
      verticalAlign="center"
    />
    <Select
      id="closeReasonSelect"
      allowDeselect={true}
      data="{{ closeReasonOptionsVar.value }}"
      emptyMessage="No options"
      label="Close Reason"
      labelPosition="top"
      labels="{{ item.label }}"
      overlayMaxHeight={375}
      placeholder="Select a close reason"
      showClear={true}
      showSelectionIndicator={true}
      values="{{ item.value }}"
    >
      <Option id="00030" value="Option 1" />
      <Option id="00031" value="Option 2" />
      <Option id="00032" value="Option 3" />
    </Select>
    <TextArea
      id="closeNotes"
      autoResize={true}
      label="Notes"
      labelPosition="top"
      minLines={2}
      placeholder="Enter value"
    />
  </Body>
  <Footer>
    <Button id="cancelCloseTicket" styleVariant="outline" text="Cancel">
      <Event
        event="click"
        method="run"
        params={{ map: { src: "closeTicketModal.setHidden(true);" } }}
        pluginId=""
        type="script"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
    <Button id="submitCloseTicket" text="Close Ticket">
      <Event
        event="click"
        method="run"
        params={{
          map: {
            src: "closeTicketScript.trigger({ onSuccess: () => { closeTicketModal.setHidden(true); } });",
          },
        }}
        pluginId=""
        type="script"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
  </Footer>
</ModalFrame>
