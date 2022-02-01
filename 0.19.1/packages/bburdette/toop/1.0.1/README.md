# Toop 

A set of tuple-like data structures that allow more than 3 elements.

The main thing I use Toop for is in case statements, to pattern match 
multiple things at once:

```elm

import Toop

case Toop.T4 mba mbb mbc mbd of 
  Toop.T4 (Just a) (Just b) (Just c) (Just d) -> 
    -- we've got all the things!
  _ -> 
    -- failure to get all the things.

```
