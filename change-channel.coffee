chromix = require("chromix-too")().chromix
url = process.argv[2]

chromix "chrome.tabs.query", {}, {active: true}, (tabs) ->
  tabs.sort (a,b) -> a.index - b.index
  tab = tabs[0]
  if tab?
    chromix "chrome.tabs.update", {}, tab.id, {url}, ->