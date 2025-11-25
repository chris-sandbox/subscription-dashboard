<ModalFrame
  id="openTicketModal"
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
      id="openTicketTitle"
      value="### Open Security Ticket"
      verticalAlign="center"
    />
    <Button
      id="closeOpenModal"
      ariaLabel="Close"
      horizontalAlign="right"
      iconBefore="bold/interface-delete-1"
      style={{ map: { border: "transparent" } }}
      styleVariant="outline"
    >
      <Event
        event="click"
        method="run"
        params={{ map: { src: "openTicketModal.setHidden(true);" } }}
        pluginId=""
        type="script"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
  </Header>
  <Body>
    <Select
      id="ticketToolSelect"
      allowDeselect={true}
      data="{{ toolOptionsVar.value }}"
      emptyMessage="No options"
      label="Tool"
      labelPosition="top"
      labels="{{ item.label }}"
      overlayMaxHeight={375}
      placeholder="Select a tool"
      showClear={true}
      showSelectionIndicator={true}
      values="{{ item.value }}"
    >
      <Option id="00030" value="Option 1" />
      <Option id="00031" value="Option 2" />
      <Option id="00032" value="Option 3" />
    </Select>
    <Select
      id="ticketRiskSelect"
      allowDeselect={true}
      data="{{ riskLevelOptionsVar.value }}"
      emptyMessage="No options"
      label="Risk Level"
      labelPosition="top"
      labels="{{ item.label }}"
      overlayMaxHeight={375}
      placeholder="Select a risk level"
      showClear={true}
      showSelectionIndicator={true}
      values="{{ item.value }}"
    >
      <Option id="00030" value="Option 1" />
      <Option id="00031" value="Option 2" />
      <Option id="00032" value="Option 3" />
    </Select>
    <TextArea
      id="ticketDescription"
      autoResize={true}
      label="Description"
      labelPosition="top"
      minLines={2}
      placeholder="Enter value"
    />
  </Body>
  <Footer>
    <Button id="cancelOpenTicket" styleVariant="outline" text="Cancel">
      <Event
        event="click"
        method="run"
        params={{ map: { src: "openTicketModal.setHidden(true);" } }}
        pluginId=""
        type="script"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
    <Button id="submitOpenTicket" text="Submit">
      <Event
        event="click"
        method="run"
        params={{
          map: {
            src: "createTicketScript.trigger({ onSuccess: () => { openTicketModal.setHidden(true); } });",
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
