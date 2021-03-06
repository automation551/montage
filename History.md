v0.3.0 - 2010-04-12
-------------------

* The "montage.yml" file has been replaced with ".montage" which should be
  located in your project root. In addition, the file is now rather different,
  and in most cases will never need to be edited when you want to add new
  sources to the sprite.

* By default Montage will now save sprites to public/images, expected source
  images to be in public/images/subdir -- where "subdir" will become the name
  of the sprite. All sources in a subdirectory will be added to the same
  sprite.

  This behavior is entirely customisable in the .montage file.

* The ".montage_cache" file which was previously saved in the same directory
  as sprites is now saved in the project root.

* The `montage` command now allows you to specify a path to a Montage
  configuration file; for example `montage path/to/montage.yml`. When using
  a non-standard directory structure, you can specify a "config.root" option
  in the configuration file, containing the path to the project root.

v0.2.0 - 2010-04-08
-------------------

* Running `montage` will now generate `_montage.sass` in the specified
  config.sass directory. A separate mixin will be generated for each sprite,
  with the mixin accepting three arguments: the name of the source image, an
  optional horizontal offset, and an optional vertical offset. Disable the
  Sass generation by setting config.sass to false.

* If pngout or pngout-darwin is available (run `which pngout pngout-darwin` to
  find out), Montage will compress the generated sprites. Installing pngout
  is strongly recommended; significant savings can be made on larger PNGs.

* The `montage` command accepts a '--force' option which will regenerate all
  sprites even if they haven't been changed since the last run.

* Sprites will be regenerated if the file has been deleted.

v0.1.2 - 2010-04-06
-------------------

* Sprites will only be regenerated when their definition (in montage.yml) has
  changed, or if the contents of the source files have changed.

* The `montage init` command now uses the highline gem to ask for the paths to
  a project's source files, and the intended sprite output directory.

* Running `montage init` will copy some sample source files into the source
  directory. This allows running `montage` immediately after creating the
  project, to see how things work.

v0.1.1 - 2010-04-05
-------------------

* Small fix for Ruby 1.9.1, which doesn't define String#inject.

v0.1.0 - 2010-04-05
-------------------

* Initial release. Supports creation of sprites and not much else.
