# cablebox

![](https://static.wikia.nocookie.net/bttf/images/3/30/Multiplechannels.PNG/revision/latest?cb=20090119063224)

A software cable box that works with any provider. Siri and Homekit enabled.

### Caveats

This is heavily based on the URLs you use for stations not changing. I'm not sure how often they change on YoutubeTV, but they seem to be the same over the past few days. Depends on [chromix-too](ttps://github.com/smblott-github/chromix-too) and coffeescript currently, since it chromix-too's examples are in it.

## Features

### Siri Shortcuts

```Hey Siri, YoutubeTV```

This is fairly straight forward with SSH and Shortcuts app. The `open` command works out of the box:

```sh
open -a "/Applications/Google Chrome" https://tv.youtube.com
```

```Hey Siri, change to CNN```

Using [chromix-too](https://github.com/smblott-github/chromix-too) we can create a generic server to proxy commands to Chrome. Currently I'm leveraging this as much as possible, but will look to eventually writing a custom extension.

Once chromix-too extension is installed, server running, and client module installed we can script against it. From their issues I am using a script to change channels:

## Change channels

```sh
coffee change-channel.coffee https://tv.youtube.com/watch/channelId
```

## Mute tab

```sh
coffee mute.coffee
```

## Close browser window

```sh
coffee turn-off.coffee
```

```sh
/usr/local/bin/node /where/coffeescript/is /where/this/script/change-channel.coffee https://tv.youtube.com/watch/channelId
```

Next steps:

* More detailed Siri Shortcuts steps
* Multiple channels
* WebRTC sharing (party mode)