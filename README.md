**THIS IS A WORK-IN-PROGRESS**

Eventually this will allow you to give your friends an offsite backup of your media files. In a worst-case-scenario where you lose your hard drives or device, your friends can send you your media files that would otherwise be lost forever.

At this time, all it does is output the paths to images in other instance's usernames.

To be useful it will need to be able to save those images to `public/accounts/[OTHER_INSTANCE_USERNAME]` in your [Instalution](https://github.com/instalution/frontend) installation path.

Instances and usernames are defined in `sync-accounts.json`.

---

# Bash Friend Sync for Instalution

## Requirements

- `jq` - https://stedolan.github.io/jq/download/
- An operating system with Bash support

## Usage

1) `git clone https://github.com/instalution/friend-sync-bash.git`

2) `cd friend-sync-bash`

3) `cp sync-accounts.example.json sync-accounts.json`

4) `bin/friend-sync.sh`
