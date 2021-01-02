# cablebox

![](https://static.wikia.nocookie.net/bttf/images/3/30/Multiplechannels.PNG/revision/latest?cb=20090119063224)

Some hacks to make watching TV more accessible on Chrome. This is heavily based on the URLs you use for stations being static. I'm not sure how often they change.

## Features

### Siri Shortcuts

```Hey Siri, CNN```

This is fairly straight forward with SSH and Shortcuts app. The `open` command works out of the box:

```sh
open -a "/Applications/Google Chrome" https://tv.youtube.com/watch/channelId
```

```Hey Siri, change to CNN```

Using [chromix-too](https://github.com/smblott-github/chromix-too) we can create a generic server to proxy commands to Chrome. Currently I'm leveraging this as much as possible, but will look to eventually writing a custom extension.

Once chromix-too extension is installed, server running, and client module installed we can script against it. From their issues I am using a script to change channels:

```sh
coffee change-channel.coffee https://tv.youtube.com/watch/channelId
```

I'm still figuring out the paths in the Shortcuts SSH config, the working workarounds is to specify all the paths:

```sh
/usr/local/bin/node /where/coffeescript/is /where/this/script/change-channel.coffee https://tv.youtube.com/watch/channelId
```

```Hey Siri, command W```

Lastly I want to be able to close a tab. I found that "Close" might be reserved, so to be literal I programmed it as Command W and installed a tool called [cliclick](https://www.bluem.net/en/projects/cliclick/) which made this easy to do:

```sh
cliclick "kd:cmd" "t:w"
```

There might be better options with chromix-too that would support closing in the background.

Next steps:

* Publish to npm?
* Rebuild extension/server/client and publish?
* Support volume control, multiple windows?
* Documentation + Blog Post?