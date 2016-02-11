# How to create and generate Apiary documentation

## TL;DR
1- Find the project's `.apib` you want to edit the documentation. e.g.: `Parking.apib` (Don't edit the `apiary.apib` directly, it will be overwritten.)

2- Edit stuff!

3- Commit and push

4- See result on PBP's area on http://docs.pbp.apiary.io/#

## Long version

Apiary has an undocumented way of merging multiple `.apib` files.

`apiary.manifest` contains an ordered list of `.apib`'s by project on each line. 
Edit the project's respective `.apib` and simply push it back to Github. Apiary integration with Github will read `apiary.manifest` and generate a final `apiary.apib` containing the full documentation!

You can add more files and make them appear in the final documentation by creating your new `SmoeOtherApi.apib` and adding its file name to `apiary.manifest`

NOTE: Keep `format.apib` and `introduction.apib` on the top. Don't edit the `apiary.apib` directly, it will be overwritten.

If you want to generate your own `apiary.apib` on your local machine, run `run_preview.sh`. It will merge the files in the order it's shown in `apiary.manifest`, generate an `apiary.apib` and host an Apiary server on port 9999 locally.(You need to have Apiary's Ruby Gem for that)
