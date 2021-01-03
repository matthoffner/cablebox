chromix = require("chromix-too")().chromix

chromix "chrome.tabs.query", {}, {active: true}, (tabs) ->
  tabs.sort (a,b) -> a.index - b.index
  tab = tabs[0]
  if tab?
    chromix "chrome.tabs.remove", {}, tab.id