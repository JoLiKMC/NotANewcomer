# Not a Newcomer! (for *Turtle WoW*)
![NotANewcomer](https://github.com/JoLiKMC/NotANewcomer/assets/102710555/2c3ccbbb-825f-4e40-818e-3dd05eb58dff)<br>
Automatically quit the Newcomers guild upon login to *Turtle WoW*.

## Why This?
Because, honestly, I don't see much point in the Newcomers guild.  It was supposed to be for newcomers and low-level players, but it ended up becoming the "de facto" or "lazy boy" guild that everyone and their brother is a part of purely for no reason other than disinterest on everyone's part.

## How It Works
* The AddOn checks to see if the player is in a guild as soon as the first system message ("Welcome to Turtle WoW!") is seen in chat.
* If the player is in a guild, it checks to see *which* guild.
  * If the player is in the "**Newcomers**" guild, it immediately removes them from it.
  * If the player is in any other guild or *not* in a guild, it does nothing.

## Bugs
* Due to how late the Newcomers guild auto-join fires, this AddOn **will not** remove a player from the guild on first login.
<br>I'm looking into how to fix that without resorting to cheesy "quick fixes".

## Version History
### v1.0.0
* Initial version.

### v1.0.2
* Changed how the AddOn functions
  * Instead of doing its thing on first load, it waits for the first system message to pop up.<br>
The AddOn still works exactly as it did before, but it just uses a different trigger.  Which unfortunately means that it *still* won't auto-quit the guild on a fresh character…
