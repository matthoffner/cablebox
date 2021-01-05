chromix = require("chromix-too")().chromix
# add your own channel urls here
channels = [
    
]

chromix "chrome.tabs.query", {}, {active: true}, (tabs) ->
  tabs.sort (a,b) -> a.index - b.index
  tab = tabs[0]
  position = channels.indexOf(tab.url)
  url = channels[0]

  if position < channels.length - 1
    url = channels[position + 1]
  else
    url = channels[0]
  if tab?
    chromix "chrome.tabs.update", {}, tab.id, {url}, ->