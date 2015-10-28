<nobr>[
<a href="{$pageVars.uri}">Refresh this page</a>
]</nobr>

      <table><tr><th style="font-size: 20px";>{$pageVars.topGrouping} Summary</th></tr></table>
      <p>
      [
        <a href="./?a={$pageVars.thisPage}&action=setDefaultView&OrderMethod={$pageVars.OrderMethod}&OrderBy={$pageVars.OrderBy}&ByteUnit={$pageVars.ByteUnit}">
          Set this view as the default
        </a>
      ]
      <br>
      <table cellpadding=1 cellspacing=1>
        <tr>
          <th rowspan="2">
            <a href="./?{$pageVars.url.dateASC}"><img border="{$pageVars.dateASCImageBorder}" src="images/up-arrow.gif"></a>
              {$pageVars.dateLabelStart}DATE{$pageVars.dateLabelEnd}
            <a href="./?{$pageVars.url.dateDESC}"><img border="{$pageVars.dateDESCImageBorder}" src="images/down-arrow.gif"></a>
          </th>
          <th rowspan="2">
            <a href="./?{$pageVars.url.usersASC}"><img border="{$pageVars.usersASCImageBorder}" src="images/up-arrow.gif"></a>
              {$pageVars.usersLabelStart}USERS{$pageVars.usersLabelEnd}
            <a href="./?{$pageVars.url.usersDESC}"><img border="{$pageVars.usersDESCImageBorder}" src="images/down-arrow.gif"></a>
          </th>
          <th rowspan="2">
            <a href="./?{$pageVars.url.hostsASC}"><img border="{$pageVars.hostsASCImageBorder}" src="images/up-arrow.gif"></a>
              {$pageVars.hostsLabelStart}HOSTS{$pageVars.hostsLabelEnd}
            <a href="./?{$pageVars.url.hostsDESC}"><img border="{$pageVars.hostsDESCImageBorder}" src="images/down-arrow.gif"></a>
          </th>
          <th rowspan="2">
            <a href="./?{$pageVars.url.sitesASC}"><img border="{$pageVars.sitesASCImageBorder}" src="images/up-arrow.gif"></a>
              {$pageVars.sitesLabelStart}SITES{$pageVars.sitesLabelEnd}
            <a href="./?{$pageVars.url.sitesDESC}"><img border="{$pageVars.sitesDESCImageBorder}" src="images/down-arrow.gif"></a>
          </th>
          <th colspan="2">TRAFFIC</th>
        </tr>
        <tr>
          <th>
            <a href="./?{$pageVars.url.bytesASC}"><img border="{$pageVars.bytesASCImageBorder}" src="images/up-arrow.gif"></a>
              {$pageVars.bytesLabelStart}BYTES{$pageVars.bytesLabelEnd}
            <a href="./?{$pageVars.url.bytesDESC}"><img border="{$pageVars.bytesDESCImageBorder}" src="images/down-arrow.gif"></a>
            <br>
            <a href="./?{$pageVars.url.B}">{$pageVars.BLabelStart}B{$pageVars.BLabelEnd}</a>
            |
            <a href="./?{$pageVars.url.K}">{$pageVars.KLabelStart}K{$pageVars.KLabelEnd}</a>
            |
            <a href="./?{$pageVars.url.M}">{$pageVars.MLabelStart}M{$pageVars.MLabelEnd}</a>
            |
            <a href="./?{$pageVars.url.G}">{$pageVars.GLabelStart}G{$pageVars.GLabelEnd}</a>
          </th>
          <th>
            <a href="./?{$pageVars.url.cachePercentASC}"><img border="{$pageVars.cachePercentASCImageBorder}" src="images/up-arrow.gif"></a>
              {$pageVars.cachePercentLabelStart}CACHE PERCENT{$pageVars.cachePercentLabelEnd}
            <a href="./?{$pageVars.url.cachePercentDESC}"><img border="{$pageVars.cachePercentDESCImageBorder}" src="images/down-arrow.gif"></a>
          </th>
        </tr>
        {foreach from=$pageVars.availableDates item=date}
        <tr onMouseOver="this.bgColor='#C5D3E7';" onMouseOut="this.bgColor='#DAE3F0';">
          <td style="text-align: left;">
          {if $date.minDate == $date.maxDate}
            <a href='./?a=IPSummary&date={$date.date}'>{$date.dateFormatted}</a>
          {else}
            <a href='./?minDate={$date.minDate}&maxDate={$date.maxDate}'>{$date.dateFormatted}</a>
          {/if}

          </td>
          <td style="text-align: center;">{$date.users}</td>
          <td style="text-align: center;">{$date.hosts}</td>
          <td style="text-align: center;">
          {if $date.minDate == $date.maxDate}
            <a href="./?a=allsites&date={$date.date}">{$date.sites}</a>
          {else}
            {$date.sites}
          {/if}
          </td>
          <td style="text-align: right;">{$date.bytes|bytesToHRF:$pageVars.ByteUnit}</td>
          <td style="text-align: center;">{$date.cachePercent}%</td>
        </tr>
      {/foreach}
      </table>
