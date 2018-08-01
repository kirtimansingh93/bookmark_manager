# bookmark_manager

## User Stories

```
1) As a User,
   So that I can quickly access my most visited sites,
   I would like to see a list of bookmarks.
```

```
2) As a User,
   So that I can quickly access a new site,
   I would like to add a new bookmarks.
```

```
3) As a User,
   So that I can remove sites from my list of most visited sites,
   I would like to delete bookmarks.
```

```
4) As a user,
   So that I can change my bookmarks,
   I would like to update my bookmarks.
```

```
5) As a User,
   So that I can add details about the website,
   I would like to add comments to bookmarks.
```

```
6) As a user,
   So that I can group and search for sites by interests,
   I would like to include tag bookmarks into categories.
```

```
7) As a User,
   So that I can quickly skim through my list of sites,
   I would like to filter through the bookmarks with a tag.
```

```
8) As a User,
   So that I can customize my bookmarks to meet my specification,
   I would like to manage my bookmarks.
```

## Domain Model

```
╔════════════╗         .all         ╔════════════╗
║            ║--------------------->║            ║
║ Controller ║ [array of bookmarks] ║  Bookmark  ║
║            ║<---------------------║            ║
╚════════════╝                      ╚════════════╝
```
