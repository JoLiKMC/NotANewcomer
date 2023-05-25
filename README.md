# Not a Newcomer! (for *Turtle WoW*)
![NotANewcomer](https://github.com/JoLiKMC/NotANewcomer/assets/102710555/2c3ccbbb-825f-4e40-818e-3dd05eb58dff)<br>
Automatically quit the Newcomers guild upon login to *Turtle WoW*.

## Why This?
Because, honestly, I don't see much point in the Newcomers guild.  From my understanding, it was supposed to be for newcomers and low-level players, but even *before* the hard mute on players below Level 5, it ended up becoming the "de facto" or "lazy boy" guild that everyone and their brother is a part of purely for no reason other than disinterest on everyone's part.  That's how I see it, anyway.

It's mostly for people who have a very bad case of alt-itis and are very forgetful.  IE, me.

## How It Works
* As soon as the player triggers the "Area Discovered" message, the AddOn checks to see if the player is in a guild.
* If the player is in a guild, it checks to see *which* guild.
  * If the player is in the "**Newcomers**" guild, it immediately removes them from it.
  * If the player is in any other guild or *not* in a guild, it does nothing.

## Bugs
* None that I'm aware of (as of v1.0.5).  Let me know what you find, if anything!

## Version History
### v1.0.0
* Initial version.

### v1.0.2
* Changed how the AddOn triggers
  * Swapped out "`VARIABLES_LOADED`" trigger with "`CHAT_SYSTEM_MESSAGE`<br>
The AddOn still works exactly as it did before, but instead of doing its thing on first load, it waits for the first system message ("Welcome to Turtle WoW!") to pop up.  Which unfortunately means that it *still* won't auto-quit the guild on a fresh character…

### v1.0.5
* Changed how the AddOn triggers again
  * Swapped out "`CHAT_SYSTEM_MESSAGE`" trigger with "`UI_INFO_MESSAGE`
  * Moved the line "`local guildName=GetGuildInfo("player")`" under the "`if (IsInGuild()) then`" command<br>
After much trial-and-error, I finally got the bloody thing to do its job in a way I find acceptable.<br>
For some reason I can't explain, the AddOn was completely blind to the guild on a fresh character.  I tried using `UI_INFO_MESSAGE` instead of the other things and it didn't work.  Then, after more tinkering, I moved the `GetGuildInfo` line down and… yep.  That's all it took.  So now, the AddOn works (more or less) as it's supposed to!

## Special Thanks
- LexieBean (https://github.com/Lexiebean)<br>
I totally recycled some of her code to make this happen.

- Vanilla WoW Wiki (https://vanilla-wow-archive.fandom.com)
<br>You have to dig a little, but they have some very good information about API and Event stuff.  Not to mention a smidgen of LUA help.

- Wowpedia (https://wowpedia.fandom.com/wiki/Wowpedia)
<br>Much the same as Vanilla WoW Wiki, but with more details.  You kinda have to dig through this pile of info, too, to find the relevant Vanilla stuff.
