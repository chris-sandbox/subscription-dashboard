<Screen
  id="page1"
  _customShortcuts={[]}
  _hashParams={[]}
  _order={0}
  _searchParams={[]}
  browserTitle=""
  title="Page 1"
  urlSlug=""
  uuid="198c84a5-e488-4d1c-ab8d-6d5a9b754c56"
>
  <State
    id="securityDataVar"
    value="[{ id: 1, tool: 'Snyk', risk: 'High', description: 'Outdated lodash with CVE', date: '2025-10-16', status: 'Open', ticketId: 'SEC-1001' }, { id: 2, tool: 'SonarQube', risk: 'Medium', description: 'Code smell: hardcoded secret', date: '2025-10-17', status: 'Open', ticketId: 'SEC-1002' }, { id: 3, tool: 'OWASP ZAP', risk: 'Low', description: 'Missing X-Frame-Options header', date: '2025-10-18', status: 'Closed', ticketId: 'SEC-1003' }, { id: 4, tool: 'Veracode', risk: 'High', description: 'SQL injection risk in search', date: '2025-10-19', status: 'Open', ticketId: 'SEC-1004' }, { id: 5, tool: 'Checkmarx', risk: 'Medium', description: 'Potential XSS in comments', date: '2025-10-19', status: 'Open', ticketId: 'SEC-1005' }, { id: 6, tool: 'Nessus', risk: 'Low', description: 'TLS 1.0 still enabled', date: '2025-10-20', status: 'Closed', ticketId: 'SEC-1006' }, { id: 7, tool: 'Qualys', risk: 'High', description: 'Open SSH port to internet', date: '2025-10-20', status: 'Open', ticketId: 'SEC-1007' }, { id: 8, tool: 'Snyk', risk: 'Medium', description: 'Prototype pollution risk', date: '2025-10-21', status: 'Open', ticketId: 'SEC-1008' }, { id: 9, tool: 'SonarQube', risk: 'Low', description: 'Weak password policy', date: '2025-10-21', status: 'Closed', ticketId: 'SEC-1009' }, { id: 10, tool: 'OWASP ZAP', risk: 'High', description: 'Reflected XSS vector', date: '2025-10-22', status: 'Open', ticketId: 'SEC-1010' }, { id: 11, tool: 'Veracode', risk: 'Medium', description: 'Insecure randomness', date: '2025-10-22', status: 'Open', ticketId: 'SEC-1011' }, { id: 12, tool: 'Checkmarx', risk: 'Low', description: 'Missing HSTS header', date: '2025-10-23', status: 'Closed', ticketId: 'SEC-1012' }, { id: 13, tool: 'Nessus', risk: 'High', description: 'Critical kernel vuln', date: '2025-10-23', status: 'Open', ticketId: 'SEC-1013' }, { id: 14, tool: 'Qualys', risk: 'Medium', description: 'Outdated OpenSSL', date: '2025-10-24', status: 'Open', ticketId: 'SEC-1014' }, { id: 15, tool: 'Snyk', risk: 'Low', description: 'Deprecated API usage', date: '2025-10-24', status: 'Closed', ticketId: 'SEC-1015' }, { id: 16, tool: 'SonarQube', risk: 'High', description: 'Sensitive data in logs', date: '2025-10-25', status: 'Open', ticketId: 'SEC-1016' }, { id: 17, tool: 'OWASP ZAP', risk: 'Medium', description: 'Directory listing enabled', date: '2025-10-26', status: 'Open', ticketId: 'SEC-1017' }, { id: 18, tool: 'Veracode', risk: 'Low', description: 'Verbose error messages', date: '2025-10-26', status: 'Closed', ticketId: 'SEC-1018' }, { id: 19, tool: 'Checkmarx', risk: 'High', description: 'Unvalidated redirect', date: '2025-10-27', status: 'Open', ticketId: 'SEC-1019' }, { id: 20, tool: 'Nessus', risk: 'Medium', description: 'Weak SSH ciphers allowed', date: '2025-10-27', status: 'Open', ticketId: 'SEC-1020' }, { id: 21, tool: 'Qualys', risk: 'Low', description: 'Clickjacking potential', date: '2025-10-28', status: 'Closed', ticketId: 'SEC-1021' }, { id: 22, tool: 'Snyk', risk: 'High', description: 'Critical dependency CVE', date: '2025-10-28', status: 'Open', ticketId: 'SEC-1022' }, { id: 23, tool: 'SonarQube', risk: 'Medium', description: 'Insufficient logging', date: '2025-10-29', status: 'Open', ticketId: 'SEC-1023' }, { id: 24, tool: 'OWASP ZAP', risk: 'Low', description: 'Cache-control missing', date: '2025-10-29', status: 'Closed', ticketId: 'SEC-1024' }]"
  />
  <State
    id="toolOptionsVar"
    value="[{ label: 'Snyk', value: 'Snyk' }, { label: 'SonarQube', value: 'SonarQube' }, { label: 'OWASP ZAP', value: 'OWASP ZAP' }, { label: 'Veracode', value: 'Veracode' }, { label: 'Checkmarx', value: 'Checkmarx' }, { label: 'Nessus', value: 'Nessus' }, { label: 'Qualys', value: 'Qualys' }]"
  />
  <State
    id="riskLevelOptionsVar"
    value="[{ label: 'High', value: 'High' }, { label: 'Medium', value: 'Medium' }, { label: 'Low', value: 'Low' }]"
  />
  <State
    id="closeReasonOptionsVar"
    value="[{ label: 'Resolved', value: 'Resolved' }, { label: 'False Positive', value: 'False Positive' }, { label: 'Risk Accepted', value: 'Risk Accepted' }, { label: 'Duplicate', value: 'Duplicate' }]"
  />
  <JavascriptQuery
    id="seedMockData"
    notificationDuration={4.5}
    query={include("../lib/seedMockData.js", "string")}
    resourceName="JavascriptQuery"
    showSuccessToaster={false}
  />
  <Function
    id="highRiskTransformer"
    funcBody={include("../lib/highRiskTransformer.js", "string")}
  />
  <Function
    id="mediumRiskTransformer"
    funcBody={include("../lib/mediumRiskTransformer.js", "string")}
  />
  <Function
    id="lowRiskTransformer"
    funcBody={include("../lib/lowRiskTransformer.js", "string")}
  />
  <Function
    id="trendChartTransformer"
    funcBody={include("../lib/trendChartTransformer.js", "string")}
  />
  <Function
    id="toolChartTransformer"
    funcBody={include("../lib/toolChartTransformer.js", "string")}
  />
  <JavascriptQuery
    id="createTicketScript"
    notificationDuration={4.5}
    query={include("../lib/createTicketScript.js", "string")}
    resourceName="JavascriptQuery"
    showSuccessToaster={false}
  />
  <JavascriptQuery
    id="closeTicketScript"
    notificationDuration={4.5}
    query={include("../lib/closeTicketScript.js", "string")}
    resourceName="JavascriptQuery"
    showSuccessToaster={false}
  />
  <Include src="./closeTicketModal.rsx" />
  <Include src="./openTicketModal.rsx" />
  <Frame
    id="$main"
    enableFullBleed={false}
    isHiddenOnDesktop={false}
    isHiddenOnMobile={false}
    padding="8px 12px"
    type="main"
  >
    <Text
      id="dashboardTitle"
      value="# Security Metrics Dashboard"
      verticalAlign="center"
    />
    <Container
      id="metricsOverview"
      footerPadding="4px 12px"
      headerPadding="4px 12px"
      padding="12px"
      showBody={true}
      showHeader={true}
      style={{ map: { border: "transparent" } }}
    >
      <Header>
        <Text
          id="metricsHeader"
          value="### Risk Overview - Last 14 Days"
          verticalAlign="center"
        />
      </Header>
      <View id="00030" viewKey="View 1">
        <Statistic
          id="highRiskStat"
          currency="USD"
          decimalPlaces={0}
          label="High Risk"
          labelCaption="Current total"
          positiveTrend="{{ self.value >= 0 }}"
          secondaryCurrency="USD"
          secondaryDecimalPlaces={0}
          secondaryFormattingStyle="percent"
          secondaryPositiveTrend="{{ self.secondaryValue >= 0 }}"
          secondaryShowSeparators={true}
          secondaryValue=""
          showSeparators={true}
          value="{{ highRiskTransformer.value || 0 }}"
        />
        <Statistic
          id="mediumRiskStat"
          currency="USD"
          decimalPlaces={0}
          label="Medium Risk"
          labelCaption="Current count"
          positiveTrend="{{ self.value >= 0 }}"
          secondaryCurrency="USD"
          secondaryDecimalPlaces={0}
          secondaryFormattingStyle="percent"
          secondaryPositiveTrend="{{ self.secondaryValue >= 0 }}"
          secondaryShowSeparators={true}
          secondaryValue=""
          showSeparators={true}
          value="{{ mediumRiskTransformer.value || 0 }}"
        />
        <Statistic
          id="lowRiskStat"
          currency="USD"
          decimalPlaces={0}
          label="Low Risk"
          labelCaption="Current count"
          positiveTrend="{{ self.value >= 0 }}"
          secondaryCurrency="USD"
          secondaryDecimalPlaces={0}
          secondaryFormattingStyle="percent"
          secondaryPositiveTrend="{{ self.secondaryValue >= 0 }}"
          secondaryShowSeparators={true}
          secondaryValue=""
          showSeparators={true}
          suffix=" cases"
          value="{{ lowRiskTransformer.value || 0 }}"
        />
      </View>
    </Container>
    <Container
      id="securityDataSection"
      footerPadding="4px 12px"
      headerPadding="4px 12px"
      padding="12px"
      showBody={true}
      showHeader={true}
      style={{ map: { border: "transparent" } }}
    >
      <Header>
        <Text
          id="tableHeader"
          value="### Security Findings"
          verticalAlign="center"
        />
        <Button id="openTicketButton" text="Open Ticket">
          <Event
            event="click"
            method="run"
            params={{
              map: {
                src: "openTicketModal.setHidden(false); ticketToolSelect.clearValue(); ticketRiskSelect.clearValue(); ticketDescription.clearValue();",
              },
            }}
            pluginId=""
            type="script"
            waitMs="0"
            waitType="debounce"
          />
        </Button>
      </Header>
      <View id="00030" viewKey="View 1">
        <Table
          id="securityTable"
          actionsOverflowPosition={1}
          cellSelection="none"
          clearChangesetOnSave={true}
          data="{{ securityDataVar.value }}"
          defaultSelectedRow={{ mode: "none", indexType: "display", index: 0 }}
          emptyMessage="No rows found"
          enableSaveActions={true}
          primaryKeyColumnId="06320"
          rowHeight="medium"
          showBorder={true}
          showFooter={true}
          showHeader={true}
          toolbarPosition="bottom"
        >
          <Column
            id="06320"
            alignment="right"
            editableOptions={{ showStepper: true }}
            format="decimal"
            formatOptions={{ showSeparators: true }}
            groupAggregationMode="none"
            key="id"
            label="ID"
            position="center"
            referenceId="id"
            size={80}
            summaryAggregationMode="none"
          />
          <Column
            id="dafad"
            alignment="left"
            format="string"
            groupAggregationMode="none"
            key="tool"
            label="Tool"
            position="center"
            referenceId="tool"
            size={140}
            summaryAggregationMode="none"
          />
          <Column
            id="3e195"
            alignment="left"
            format="tag"
            formatOptions={{ automaticColors: true }}
            groupAggregationMode="none"
            key="risk"
            label="Risk"
            position="center"
            referenceId="risk"
            size={100}
            summaryAggregationMode="none"
          />
          <Column
            id="0bf91"
            alignment="left"
            format="multilineString"
            groupAggregationMode="none"
            key="description"
            label="Description"
            position="center"
            referenceId="description"
            size={320}
            summaryAggregationMode="none"
          />
          <Column
            id="60536"
            alignment="left"
            format="date"
            formatOptions={{ dateFormat: "yyyy-MM-dd" }}
            groupAggregationMode="none"
            key="date"
            label="Date"
            position="center"
            referenceId="date"
            size={120}
            summaryAggregationMode="none"
          />
          <Column
            id="28710"
            alignment="left"
            format="tag"
            formatOptions={{ automaticColors: true }}
            groupAggregationMode="none"
            key="status"
            label="Status"
            position="center"
            referenceId="status"
            size={100}
            summaryAggregationMode="none"
          />
          <Column
            id="8411b"
            alignment="left"
            format="string"
            groupAggregationMode="none"
            key="ticketId"
            label="Ticket ID"
            position="center"
            referenceId="ticketId"
            size={140}
            summaryAggregationMode="none"
          />
          <Action
            id="e0ae5"
            icon="line/interface-delete-circle"
            label="Close Ticket"
          >
            <Event
              event="clickAction"
              method="run"
              params={{ map: { src: "closeTicketModal.setHidden(false);" } }}
              pluginId=""
              type="script"
              waitMs="0"
              waitType="debounce"
            />
          </Action>
          <ToolbarButton
            id="1a"
            icon="bold/interface-text-formatting-filter-2"
            label="Filter"
            type="filter"
          />
          <ToolbarButton
            id="3c"
            icon="bold/interface-download-button-2"
            label="Download"
            type="custom"
          >
            <Event
              event="clickToolbar"
              method="exportData"
              pluginId="securityTable"
              type="widget"
              waitMs="0"
              waitType="debounce"
            />
          </ToolbarButton>
          <ToolbarButton
            id="4d"
            icon="bold/interface-arrows-round-left"
            label="Refresh"
            type="custom"
          >
            <Event
              event="clickToolbar"
              method="refresh"
              pluginId="securityTable"
              type="widget"
              waitMs="0"
              waitType="debounce"
            />
          </ToolbarButton>
        </Table>
      </View>
    </Container>
    <Container
      id="chartsSection"
      footerPadding="4px 12px"
      headerPadding="4px 12px"
      padding="12px"
      showBody={true}
      showHeader={true}
      style={{ map: { border: "transparent" } }}
    >
      <Header>
        <Text
          id="chartsHeader"
          value="### Risk Trends Over Time"
          verticalAlign="center"
        />
      </Header>
      <View id="00030" viewKey="View 1">
        <Chart
          id="riskTrendChart"
          barMode="group"
          barOrientation=""
          chartType="line"
          clearOnEmptyData={true}
          legendPosition="top"
          selectedPoints="[]"
          stackedBarTotalsDataLabelPosition="none"
          title="Risk Counts - Last 14 Days"
          xAxisLineWidth={1}
          xAxisRangeMax=""
          xAxisRangeMin=""
          xAxisShowLine={true}
          xAxisShowTickLabels={true}
          xAxisTickFormatMode="gui"
          xAxisTitle="Date"
          xAxisTitleStandoff={20}
          yAxis2LineWidth={1}
          yAxis2RangeMax=""
          yAxis2RangeMin=""
          yAxis2ShowTickLabels={true}
          yAxis2TickFormatMode="gui"
          yAxis2TitleStandoff={20}
          yAxisGrid={true}
          yAxisLineWidth={1}
          yAxisRangeMax=""
          yAxisRangeMin=""
          yAxisShowTickLabels={true}
          yAxisTickFormatMode="gui"
          yAxisTitle="Risk Count (count)"
          yAxisTitleStandoff={20}
        >
          <Series
            id="0"
            aggregationType="none"
            colorArray={{ array: [] }}
            colorArrayDropDown={{ array: [] }}
            colorInputMode="gradientColorArray"
            connectorLineColor="#000000"
            dataLabelPosition="none"
            datasourceMode="manual"
            decreasingBorderColor="#000000"
            decreasingColor="#000000"
            filteredGroupsMode="source"
            gradientColorArray={{ array: [{ array: [] }] }}
            groupBy={{ array: [] }}
            groupByDropdownType="manual"
            groupByStyles={{}}
            hidden={false}
            hiddenMode="source"
            hoverTemplateArray={{ array: [] }}
            hoverTemplateMode="manual"
            increasingBorderColor="#000000"
            increasingColor="#000000"
            lineColor="#DC2626"
            lineDash="solid"
            lineShape="linear"
            lineUnderFillMode="none"
            lineWidth={2}
            markerBorderColor="#ffffff"
            markerBorderWidth={1}
            markerColor="#DC2626"
            markerSize={6}
            markerSymbol="circle"
            name="High"
            showMarkers={false}
            textTemplateMode="manual"
            type="line"
            waterfallBase={0}
            waterfallMeasures={{ array: [] }}
            waterfallMeasuresMode="source"
            xData="{{ trendChartTransformer.value.categories }}"
            xDataMode="manual"
            yAxis="y"
            yData="{{ trendChartTransformer.value.series.find(s => s.name === 'High')?.data }}"
            yDataMode="manual"
            zData="[1, 2, 3, 4, 5]"
            zDataMode="manual"
          />
          <Series
            id="1"
            aggregationType="none"
            colorArray={{ array: [] }}
            colorArrayDropDown={{ array: [] }}
            colorInputMode="gradientColorArray"
            connectorLineColor="#000000"
            dataLabelPosition="none"
            datasourceMode="manual"
            decreasingBorderColor="#000000"
            decreasingColor="#000000"
            filteredGroupsMode="source"
            gradientColorArray={{ array: [{ array: [] }] }}
            groupBy={{ array: [] }}
            groupByDropdownType="manual"
            groupByStyles={{}}
            hidden={false}
            hiddenMode="source"
            hoverTemplateArray={{ array: [] }}
            hoverTemplateMode="manual"
            increasingBorderColor="#000000"
            increasingColor="#000000"
            lineColor="#F59E0B"
            lineDash="solid"
            lineShape="linear"
            lineUnderFillMode="none"
            lineWidth={2}
            markerBorderColor="#ffffff"
            markerBorderWidth={1}
            markerColor="#F59E0B"
            markerSize={6}
            markerSymbol="circle"
            name="Medium"
            showMarkers={false}
            textTemplateMode="manual"
            type="line"
            waterfallBase={0}
            waterfallMeasures={{ array: [] }}
            waterfallMeasuresMode="source"
            xData="{{ trendChartTransformer.value.categories }}"
            xDataMode="manual"
            yAxis="y"
            yData="{{ trendChartTransformer.value.series.find(s => s.name === 'Medium')?.data }}"
            yDataMode="manual"
            zData="[1, 2, 3, 4, 5]"
            zDataMode="manual"
          />
          <Series
            id="2"
            aggregationType="none"
            colorArray={{ array: [] }}
            colorArrayDropDown={{ array: [] }}
            colorInputMode="gradientColorArray"
            connectorLineColor="#000000"
            dataLabelPosition="none"
            datasourceMode="manual"
            decreasingBorderColor="#000000"
            decreasingColor="#000000"
            filteredGroupsMode="source"
            gradientColorArray={{ array: [{ array: [] }] }}
            groupBy={{ array: [] }}
            groupByDropdownType="manual"
            groupByStyles={{}}
            hidden={false}
            hiddenMode="source"
            hoverTemplateArray={{ array: [] }}
            hoverTemplateMode="manual"
            increasingBorderColor="#000000"
            increasingColor="#000000"
            lineColor="#10B981"
            lineDash="solid"
            lineShape="linear"
            lineUnderFillMode="none"
            lineWidth={2}
            markerBorderColor="#ffffff"
            markerBorderWidth={1}
            markerColor="#10B981"
            markerSize={6}
            markerSymbol="circle"
            name="Low"
            showMarkers={false}
            textTemplateMode="manual"
            type="line"
            waterfallBase={0}
            waterfallMeasures={{ array: [] }}
            waterfallMeasuresMode="source"
            xData="{{ trendChartTransformer.value.categories }}"
            xDataMode="manual"
            yAxis="y"
            yData="{{ trendChartTransformer.value.series.find(s => s.name === 'Low')?.data }}"
            yDataMode="manual"
            zData="[1, 2, 3, 4, 5]"
            zDataMode="manual"
          />
        </Chart>
        <Chart
          id="toolDistributionChart"
          barGap={0.4}
          barMode="group"
          clearOnEmptyData={true}
          selectedPoints="[]"
          stackedBarTotalsDataLabelPosition="none"
          title="Risk Counts by Tool"
          xAxisRangeMax=""
          xAxisRangeMin=""
          xAxisShowTickLabels={true}
          xAxisTickFormatMode="gui"
          xAxisTitle="Tool"
          xAxisTitleStandoff={20}
          yAxis2LineWidth={1}
          yAxis2RangeMax=""
          yAxis2RangeMin=""
          yAxis2ShowTickLabels={true}
          yAxis2TickFormatMode="gui"
          yAxis2TitleStandoff={20}
          yAxisRangeMax=""
          yAxisRangeMin=""
          yAxisShowTickLabels={true}
          yAxisTickFormatMode="gui"
          yAxisTitle="Risk Count (count)"
          yAxisTitleStandoff={20}
        >
          <Series
            id="0"
            aggregationType="none"
            colorArray={{ array: [] }}
            colorArrayDropDown={{ array: [] }}
            colorInputMode="gradientColorArray"
            connectorLineColor="#000000"
            dataLabelPosition="none"
            datasourceMode="manual"
            decreasingBorderColor="#000000"
            decreasingColor="#000000"
            filteredGroupsMode="source"
            gradientColorArray={{ array: [{ array: [] }] }}
            groupBy={{ array: [] }}
            groupByDropdownType="manual"
            groupByStyles={{}}
            hidden={false}
            hiddenMode="source"
            hoverTemplateArray={{ array: [] }}
            hoverTemplateMode="manual"
            increasingBorderColor="#000000"
            increasingColor="#000000"
            lineColor="#DC2626"
            lineDash="solid"
            lineShape="linear"
            lineUnderFillMode="none"
            lineWidth={2}
            markerBorderColor="#ffffff"
            markerBorderWidth={1}
            markerColor="#DC2626"
            markerSize={6}
            markerSymbol="circle"
            name="High"
            showMarkers={false}
            textTemplateMode="manual"
            type="bar"
            waterfallBase={0}
            waterfallMeasures={{ array: [] }}
            waterfallMeasuresMode="source"
            xData="{{ toolChartTransformer.value.categories }}"
            xDataMode="manual"
            yAxis="y"
            yData="{{ toolChartTransformer.value.series.find(s => s.name === 'High')?.data }}"
            yDataMode="manual"
            zData="[1, 2, 3, 4, 5]"
            zDataMode="manual"
          />
          <Series
            id="1"
            aggregationType="none"
            colorArray={{ array: [] }}
            colorArrayDropDown={{ array: [] }}
            colorInputMode="gradientColorArray"
            connectorLineColor="#000000"
            dataLabelPosition="none"
            datasourceMode="manual"
            decreasingBorderColor="#000000"
            decreasingColor="#000000"
            filteredGroupsMode="source"
            gradientColorArray={{ array: [{ array: [] }] }}
            groupBy={{ array: [] }}
            groupByDropdownType="manual"
            groupByStyles={{}}
            hidden={false}
            hiddenMode="source"
            hoverTemplateArray={{ array: [] }}
            hoverTemplateMode="manual"
            increasingBorderColor="#000000"
            increasingColor="#000000"
            lineColor="#F59E0B"
            lineDash="solid"
            lineShape="linear"
            lineUnderFillMode="none"
            lineWidth={2}
            markerBorderColor="#ffffff"
            markerBorderWidth={1}
            markerColor="#F59E0B"
            markerSize={6}
            markerSymbol="circle"
            name="Medium"
            showMarkers={false}
            textTemplateMode="manual"
            type="bar"
            waterfallBase={0}
            waterfallMeasures={{ array: [] }}
            waterfallMeasuresMode="source"
            xData="{{ toolChartTransformer.value.categories }}"
            xDataMode="manual"
            yAxis="y"
            yData="{{ toolChartTransformer.value.series.find(s => s.name === 'Medium')?.data }}"
            yDataMode="manual"
            zData="[1, 2, 3, 4, 5]"
            zDataMode="manual"
          />
          <Series
            id="2"
            aggregationType="none"
            colorArray={{ array: [] }}
            colorArrayDropDown={{ array: [] }}
            colorInputMode="gradientColorArray"
            connectorLineColor="#000000"
            dataLabelPosition="none"
            datasourceMode="manual"
            decreasingBorderColor="#000000"
            decreasingColor="#000000"
            filteredGroupsMode="source"
            gradientColorArray={{ array: [{ array: [] }] }}
            groupBy={{ array: [] }}
            groupByDropdownType="manual"
            groupByStyles={{}}
            hidden={false}
            hiddenMode="source"
            hoverTemplateArray={{ array: [] }}
            hoverTemplateMode="manual"
            increasingBorderColor="#000000"
            increasingColor="#000000"
            lineColor="#10B981"
            lineDash="solid"
            lineShape="linear"
            lineUnderFillMode="none"
            lineWidth={2}
            markerBorderColor="#ffffff"
            markerBorderWidth={1}
            markerColor="#10B981"
            markerSize={6}
            markerSymbol="circle"
            name="Low"
            showMarkers={false}
            textTemplateMode="manual"
            type="bar"
            waterfallBase={0}
            waterfallMeasures={{ array: [] }}
            waterfallMeasuresMode="source"
            xData="{{ toolChartTransformer.value.categories }}"
            xDataMode="manual"
            yAxis="y"
            yData="{{ toolChartTransformer.value.series.find(s => s.name === 'Low')?.data }}"
            yDataMode="manual"
            zData="[1, 2, 3, 4, 5]"
            zDataMode="manual"
          />
        </Chart>
      </View>
    </Container>
  </Frame>
</Screen>
