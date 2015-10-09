# How to create and generate Apiary documentation

## TL;DR
1- Find the project's `.apib` you want to edit the documentation. e.g.: `Parking.apib`

2- Edit stuff!

3- Commit and push

4- See result on PBP's area on http://docs.pbp.apiary.io/#

## Long version

Apiary has an undocumented way of merging multiple `.apib` files.

Inside `apiary.manifest` theres a list of `.apib`s separated by project. 
Edit one of the respective listed `.apibs` and simply push it back to Github. Apiary integration with Github will read `apiary.manifest` and generate a final `apiary.apib` containing the ful documentation!

NOTE: Keep `format.apib` and `introduction.apib` on the top.

If you want, however, to have your own generated `apiary.apib`, run `run_preview.sh`. It will merge the files in the order it's shown in `apiary.manifest`, generate an `apiary.apib` and host an Apiary server on port 9999 (You need Apiary's Ruby Gem for that)
