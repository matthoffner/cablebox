chromix = require("chromix-too")().chromix

chromix "chrome.tabs.query", {}, {active: true}, (tabs) ->
  tabs.sort (a,b) -> a.index - b.index
  tab = tabs[0]
  if tab?
    isMuted = tab.mutedInfo.muted
    chromix "chrome.tabs.update", {}, tab.id, {"muted": !isMuted }, ->