;;; .loaddefs.el --- automatically extracted autoloads
;;
;;; Code:


;;;### (autoloads (artist-mode) "artist-xmas/artist-xmas" "artist-xmas/artist-xmas.el"
;;;;;;  (21821 25279 352875 790000))
;;; Generated autoloads from artist-xmas/artist-xmas.el

(autoload 'artist-mode "artist-xmas/artist-xmas" "\
Toggle artist mode. With arg, turn artist mode on if arg is positive.
Artist lets you draw lines, squares, rectangles and poly-lines, ellipses
and circles with your mouse and/or keyboard.

How to quit artist mode

 Type \\[artist-mode-off] to quit artist-mode.


How to submit a bug report

 Type \\[artist-submit-bug-report] to submit a bug report.


Drawing with the mouse:

 mouse-2
 shift mouse-2	Pops up a menu where you can select what to draw with
		mouse-1, and where you can do some settings (described
		below).

 mouse-1
 shift mouse-1	Draws lines, rectangles or poly-lines, erases, cuts, copies
		or pastes:

		Operation	Not shifted		  Shifted
		--------------------------------------------------------------
                Pen             fill-char at point        line from last point
                                                          to new point
		--------------------------------------------------------------
		Line		Line in any direction	  Straight line
		--------------------------------------------------------------
		Rectangle	Rectangle		  Square
		--------------------------------------------------------------
		Poly-line	Poly-line in any dir	  Straight poly-lines
		--------------------------------------------------------------
		Ellipses	Ellipses		  Circles
		--------------------------------------------------------------
		Text		Text (see thru)		  Text (overwrite)
		--------------------------------------------------------------
		Spray-can	Spray-can		  Set size for spray
		--------------------------------------------------------------
		Erase		Erase character		  Erase rectangle
		--------------------------------------------------------------
		Vaporize	Erase single line	  Erase connected
							  lines
		--------------------------------------------------------------
		Cut		Cut rectangle		  Cut square
		--------------------------------------------------------------
		Copy		Copy rectangle		  Copy square
		--------------------------------------------------------------
		Paste		Paste			  Paste
		--------------------------------------------------------------
		Flood-fill	Flood-fill		  Flood-fill
		--------------------------------------------------------------

		* Straight lines can only go horizontally, vertically
		  or diagonally.

		* Poly-lines are drawn while holding mouse-1 down. When you
		  release the button, the point is set. If you want a segment
		  to be straight, hold down shift before pressing the
		  mouse-1 button. Click mouse-2 or mouse-3 to stop drawing
		  poly-lines.

		* See thru for text means that text already in the buffer
		  will be visible through blanks in the text rendered, while
		  overwrite means the opposite.

		* Vaporizing connected lines only vaporizes lines whose
		  _endpoints_ are connected. See also the variable
		  `artist-vaporize-fuzziness'.

		* Cut copies, then clears the rectangle/square.

		* When drawing lines or poly-lines, you can set arrows.
		  See below under ``Arrows'' for more info.

		* The mode line shows the currently selected drawing operation.
		  In addition, if it has an asterisk (*) at the end, you
		  are currently drawing something.

		* Be patient when flood-filling -- large areas take quite
		  some time to fill.


 mouse-3	Erases character under pointer
 shift mouse-3	Erases rectangle


Settings

 Set fill	Sets the character used when filling rectangles/squares

 Set line	Sets the character used when drawing lines

 Erase char	Sets the character used when erasing

 Rubber-banding	Toggles rubber-banding

 Trimming	Toggles trimming of line-endings (that is: when the shape
		is drawn, extraneous white-space at end of lines is removed)

 Borders        Toggles the drawing of line borders around filled shapes.


Drawing with keys

 \\[artist-key-set-point]		Does one of the following:
		For lines/rectangles/squares: sets the first/second endpoint
		For poly-lines: sets a point (use C-u \\[artist-key-set-point] to set last point)
		When erase characters: toggles erasing
		When cutting/copying: Sets first/last endpoint of rect/square
		When pasting: Pastes

 \\[artist-select-operation]	Selects what to draw

 Move around with \\[artist-next-line], \\[artist-previous-line], \\[artist-forward-char] and \\[artist-backward-char].

 \\[artist-select-fill-char]	Sets the charater to use when filling
 \\[artist-select-line-char]	Sets the charater to use when drawing
 \\[artist-select-erase-char]	Sets the charater to use when erasing
 \\[artist-toggle-rubber-banding]	Toggles rubber-banding
 \\[artist-toggle-trim-line-endings]	Toggles trimming of line-endings
 \\[artist-toggle-borderless-shapes]	Toggles borders on drawn shapes


Arrows

 \\[artist-toggle-first-arrow]		Sets/unsets an arrow at the beginning
		of the line/poly-line

 \\[artist-toggle-second-arrow]		Sets/unsets an arrow at the end
		of the line/poly-line


Selecting operation

 There are some keys for quickly selecting drawing operations:

 \\[artist-select-op-line]	Selects drawing lines
 \\[artist-select-op-straight-line]	Selects drawing straight lines
 \\[artist-select-op-rectangle]	Selects drawing rectangles
 \\[artist-select-op-square]	Selects drawing squares
 \\[artist-select-op-poly-line]	Selects drawing poly-lines
 \\[artist-select-op-straight-poly-line]	Selects drawing straight poly-lines
 \\[artist-select-op-ellipse]	Selects drawing ellipses
 \\[artist-select-op-circle]	Selects drawing circles
 \\[artist-select-op-text-see-thru]	Selects rendering text (see thru)
 \\[artist-select-op-text-overwrite]	Selects rendering text (overwrite)
 \\[artist-select-op-spray-can]	Spray with spray-can
 \\[artist-select-op-spray-set-size]	Set size for the spray-can
 \\[artist-select-op-erase-char]	Selects erasing characters
 \\[artist-select-op-erase-rectangle]	Selects erasing rectangles
 \\[artist-select-op-vaporize-line]	Selects vaporizing single lines
 \\[artist-select-op-vaporize-lines]	Selects vaporizing connected lines
 \\[artist-select-op-cut-rectangle]	Selects cutting rectangles
 \\[artist-select-op-copy-rectangle]	Selects copying rectangles
 \\[artist-select-op-paste]	Selects pasting
 \\[artist-select-op-flood-fill]	Selects flood-filling


Variables

 This is a brief overview of the different varaibles. For more info,
 see the documentation for the variables (type \\[describe-variable] <variable> RET).

 artist-rubber-banding		Interactively do rubber-banding or not
 artist-first-char		What to set at first/second point...
 artist-second-char		...when not rubber-banding
 artist-interface-with-rect	If cut/copy/paste should interface with rect
 artist-arrows			The arrows to use when drawing arrows
 artist-aspect-ratio		Character height-to-width for squares
 artist-trim-line-endings	Trimming of line endings
 artist-flood-fill-right-border	Right border when flood-filling
 artist-flood-fill-show-incrementally	Update display while filling
 artist-pointer-shape		Pointer shape to use while drawing
 artist-ellipse-left-char	Character to use for narrow ellipses
 artist-ellipse-right-char	Character to use for narrow ellipses
 artist-borderless-shapes       If shapes should have borders
 artist-picture-compatibility   Whether or not to be picture mode compatible
 artist-vaporize-fuzziness      Tolerance when recognizing lines
 artist-spray-interval          Seconds between repeated sprayings
 artist-spray-radius            Size of the spray-area
 artist-spray-chars             The spray-``color''
 artist-spray-new-chars         Initial spray-``color''

Hooks

 When entering artist-mode, the hook `artist-mode-init-hook' is called.
 When quitting artist-mode, the hook `artist-mode-exit-hook' is called.


Keymap summary

\\{artist-mode-map}

\(fn &optional STATE)" t nil)

;;;***

;;;### (autoloads (global-auto-complete-mode auto-complete-mode auto-complete)
;;;;;;  "auto-complete/auto-complete" "auto-complete/auto-complete.el"
;;;;;;  (21817 38407 434959 544000))
;;; Generated autoloads from auto-complete/auto-complete.el

(autoload 'auto-complete "auto-complete/auto-complete" "\
Start auto-completion at current point.

\(fn &optional SOURCES)" t nil)

(autoload 'auto-complete-mode "auto-complete/auto-complete" "\
AutoComplete mode

\(fn &optional ARG)" t nil)

(defvar global-auto-complete-mode nil "\
Non-nil if Global-Auto-Complete mode is enabled.
See the command `global-auto-complete-mode' for a description of this minor mode.
Setting this variable directly does not take effect;
either customize it (see the info node `Easy Customization')
or call the function `global-auto-complete-mode'.")

(custom-autoload 'global-auto-complete-mode "auto-complete/auto-complete" nil)

(autoload 'global-auto-complete-mode "auto-complete/auto-complete" "\
Toggle Auto-Complete mode in all buffers.
With prefix ARG, enable Global-Auto-Complete mode if ARG is positive;
otherwise, disable it.  If called from Lisp, enable the mode if
ARG is omitted or nil.

Auto-Complete mode is enabled in all buffers where
`auto-complete-mode-maybe' would do it.
See `auto-complete-mode' for more information on Auto-Complete mode.

\(fn &optional ARG)" t nil)

;;;***

;;;### (autoloads (ac-config-default) "auto-complete/auto-complete-config"
;;;;;;  "auto-complete/auto-complete-config.el" (21817 38407 434959
;;;;;;  544000))
;;; Generated autoloads from auto-complete/auto-complete-config.el

(autoload 'ac-config-default "auto-complete/auto-complete-config" "\


\(fn)" nil nil)

;;;***

;;;### (autoloads (el-get el-get-self-checksum el-get-checksum el-get-make-recipes
;;;;;;  el-get-cd el-get-reinstall el-get-remove el-get-self-update
;;;;;;  el-get-update-packages-of-type el-get-update-all el-get-update
;;;;;;  el-get-install el-get-version) "el-get/el-get" "el-get/el-get.el"
;;;;;;  (21817 38010 573492 247000))
;;; Generated autoloads from el-get/el-get.el

(autoload 'el-get-version "el-get/el-get" "\
Message the current el-get version

\(fn)" t nil)

(autoload 'el-get-install "el-get/el-get" "\
Cause the named PACKAGE to be installed after all of its
dependencies (if any).

PACKAGE may be either a string or the corresponding symbol.

\(fn PACKAGE)" t nil)

(autoload 'el-get-update "el-get/el-get" "\
Update PACKAGE.

\(fn PACKAGE)" t nil)

(autoload 'el-get-update-all "el-get/el-get" "\
Performs update of all installed packages.

\(fn &optional NO-PROMPT)" t nil)

(autoload 'el-get-update-packages-of-type "el-get/el-get" "\
Update all installed packages of type TYPE.

\(fn TYPE)" t nil)

(autoload 'el-get-self-update "el-get/el-get" "\
Update el-get itself.  The standard recipe takes care of reloading the code.

\(fn)" t nil)

(autoload 'el-get-remove "el-get/el-get" "\
Remove any PACKAGE that is know to be installed or required.

\(fn PACKAGE)" t nil)

(autoload 'el-get-reinstall "el-get/el-get" "\
Remove PACKAGE and then install it again.

\(fn PACKAGE)" t nil)

(autoload 'el-get-cd "el-get/el-get" "\
Open dired in the package directory.

\(fn PACKAGE)" t nil)

(autoload 'el-get-make-recipes "el-get/el-get" "\
Loop over `el-get-sources' and write a recipe file for each
entry which is not a symbol and is not already a known recipe.

\(fn &optional DIR)" t nil)

(autoload 'el-get-checksum "el-get/el-get" "\
Compute the checksum of the given package, and put it in the kill-ring

\(fn PACKAGE)" t nil)

(autoload 'el-get-self-checksum "el-get/el-get" "\
Compute the checksum of the running version of el-get itself.

Also put the checksum in the kill-ring.

\(fn)" t nil)

(autoload 'el-get "el-get/el-get" "\
Ensure that packages have been downloaded once and init them as needed.

This will not update the sources by using `apt-get install' or
`git pull', but it will ensure that:

* the packages have been installed
* load-path is set so their elisp files can be found
* Info-directory-list is set so their info files can be found
* Autoloads have been prepared and evaluated for each package
* Any post-installation setup (e.g. `(require 'feature)') happens

When SYNC is nil (the default), all installations run
concurrently, in the background.

When SYNC is 'sync, each package will be installed synchronously,
and any error will stop it all.

Please note that the `el-get-init' part of `el-get' is always
done synchronously. There's `byte-compile' support though, and
the packages you use are welcome to use `autoload' too.

PACKAGES is expected to be a list of packages you want to install
or init.  When PACKAGES is omited (the default), the list of
already installed packages is considered.

\(fn &optional SYNC &rest PACKAGES)" nil nil)

;;;***

;;;### (autoloads (el-get-bundle! el-get-bundle el-get-bundle-el-get)
;;;;;;  "el-get/el-get-bundle" "el-get/el-get-bundle.el" (21817 38010
;;;;;;  569494 246000))
;;; Generated autoloads from el-get/el-get-bundle.el

(autoload 'el-get-bundle-el-get "el-get/el-get-bundle" "\


\(fn SRC)" nil nil)

(autoload 'el-get-bundle "el-get/el-get-bundle" "\
Install PACKAGE and run initialization FORM.

PACKAGE can be either a simple package name or a package name
with a modifier before the name to specify local recipe source
information:

* `<owner>/' : specifies a Github owner name
* `gist:<id>' : specifies a Gist ID
* `<type>:' : specifies a type of the package source

If `FEATURE in PACKAGE' form is used instead of PACKAGE, then
that FEATURE is `require'd after installing PACKAGE.  You can
also use `el-get-bundle!' macro if FEATURE and PACKAGE are the
same.  If you wish to `require' more than one feature, then use
`:features' property in FORM.

The initialization FORM may start with a property list that
describes a local recipe.  The FORM after the property list is
treated as initialization code, which is actually an `:after'
property of the local recipe.

A copy of the initialization code is stored in a directory
specified by `el-get-bundle-init-directory' and its byte-compiled
version is used if `el-get-bundle-byte-compile' is non-nil.

\(fn PACKAGE &rest FORM)" nil t)

(put 'el-get-bundle 'lisp-indent-function 'defun)

(autoload 'el-get-bundle! "el-get/el-get-bundle" "\
Install PACKAGE and run initialization form.
It is the same as `el-get-bundle' except that PACKAGE is explicitly
required.

\(fn PACKAGE &rest ARGS)" nil t)

(put 'el-get-bundle! 'lisp-indent-function 'defun)

;;;***

;;;### (autoloads (el-get-list-packages) "el-get/el-get-list-packages"
;;;;;;  "el-get/el-get-list-packages.el" (21817 38010 573492 247000))
;;; Generated autoloads from el-get/el-get-list-packages.el

(autoload 'el-get-list-packages "el-get/el-get-list-packages" "\
Display a list of packages.

\(fn)" t nil)

;;;***

;;;### (autoloads nil "enh-ruby-mode/enh-ruby-mode" "enh-ruby-mode/enh-ruby-mode.el"
;;;;;;  (21828 3132 6944 100000))
;;; Generated autoloads from enh-ruby-mode/enh-ruby-mode.el

(autoload 'enh-ruby-mode "enh-ruby-mode/enh-ruby-mode" "\
Enhanced Major mode for editing Ruby code.

\\{enh-ruby-mode-map}

\(fn)" t nil)

;;;***

;;;### (autoloads (evil-leader/set-key-for-mode evil-leader/set-key
;;;;;;  evil-leader-mode global-evil-leader-mode) "evil-leader/evil-leader"
;;;;;;  "evil-leader/evil-leader.el" (21821 24796 556859 604000))
;;; Generated autoloads from evil-leader/evil-leader.el

(autoload 'global-evil-leader-mode "evil-leader/evil-leader" "\
Global minor mode for <leader> support.

\(fn &optional ARG)" t nil)

(autoload 'evil-leader-mode "evil-leader/evil-leader" "\
Minor mode to enable <leader> support.

\(fn &optional ARG)" t nil)

(autoload 'evil-leader/set-key "evil-leader/evil-leader" "\
Bind `key' to command `def' in `evil-leader/default-map'.

Key has to be readable by `read-kbd-macro' and `def' a command.
Accepts further `key' `def' pairs.

\(fn KEY DEF &rest BINDINGS)" t nil)

(autoload 'evil-leader/set-key-for-mode "evil-leader/evil-leader" "\
Create keybindings for major-mode `mode' with `key' bound to command `def'.

See `evil-leader/set-key'.

\(fn MODE KEY DEF &rest BINDINGS)" t nil)

;;;***

;;;### (autoloads (global-evil-matchit-mode turn-off-evil-matchit-mode
;;;;;;  turn-on-evil-matchit-mode evil-matchit-mode evilmi-version
;;;;;;  evilmi-jump-items evilmi-jump-to-percentage evilmi-delete-items
;;;;;;  evilmi-select-items) "evil-matchit/evil-matchit" "evil-matchit/evil-matchit.el"
;;;;;;  (21817 40361 574240 339000))
;;; Generated autoloads from evil-matchit/evil-matchit.el

(autoload 'evilmi-select-items "evil-matchit/evil-matchit" "\
Select items/tags and the region between them

\(fn &optional NUM)" t nil)

(autoload 'evilmi-delete-items "evil-matchit/evil-matchit" "\
Delete items/tags and the region between them

\(fn &optional NUM)" t nil)

(autoload 'evilmi-jump-to-percentage "evil-matchit/evil-matchit" "\
Re-implementation of evil's similar functionality

\(fn NUM)" t nil)

(autoload 'evilmi-jump-items "evil-matchit/evil-matchit" "\
jump between item/tag(s)

\(fn &optional NUM)" t nil)

(autoload 'evilmi-version "evil-matchit/evil-matchit" "\


\(fn)" t nil)

(autoload 'evil-matchit-mode "evil-matchit/evil-matchit" "\
Buffer-local minor mode to emulate matchit.vim

\(fn &optional ARG)" t nil)

(autoload 'turn-on-evil-matchit-mode "evil-matchit/evil-matchit" "\
Enable evil-matchit-mode in the current buffer.

\(fn)" nil nil)

(autoload 'turn-off-evil-matchit-mode "evil-matchit/evil-matchit" "\
Disable evil-matchit-mode in the current buffer.

\(fn)" nil nil)

(defvar global-evil-matchit-mode nil "\
Non-nil if Global-Evil-Matchit mode is enabled.
See the command `global-evil-matchit-mode' for a description of this minor mode.
Setting this variable directly does not take effect;
either customize it (see the info node `Easy Customization')
or call the function `global-evil-matchit-mode'.")

(custom-autoload 'global-evil-matchit-mode "evil-matchit/evil-matchit" nil)

(autoload 'global-evil-matchit-mode "evil-matchit/evil-matchit" "\
Toggle Evil-Matchit mode in all buffers.
With prefix ARG, enable Global-Evil-Matchit mode if ARG is positive;
otherwise, disable it.  If called from Lisp, enable the mode if
ARG is omitted or nil.

Evil-Matchit mode is enabled in all buffers where
`turn-on-evil-matchit-mode' would do it.
See `evil-matchit-mode' for more information on Evil-Matchit mode.

\(fn &optional ARG)" t nil)

;;;***

;;;### (autoloads (evilmi-c-jump evilmi-c-get-tag) "evil-matchit/evil-matchit-c"
;;;;;;  "evil-matchit/evil-matchit-c.el" (21817 40361 574240 339000))
;;; Generated autoloads from evil-matchit/evil-matchit-c.el

(autoload 'evilmi-c-get-tag "evil-matchit/evil-matchit-c" "\


\(fn)" nil nil)

(autoload 'evilmi-c-jump "evil-matchit/evil-matchit-c" "\


\(fn RLT NUM)" nil nil)

;;;***

;;;### (autoloads (evilmi-cmake-jump evilmi-cmake-get-tag) "evil-matchit/evil-matchit-cmake"
;;;;;;  "evil-matchit/evil-matchit-cmake.el" (21817 40361 574240
;;;;;;  339000))
;;; Generated autoloads from evil-matchit/evil-matchit-cmake.el

(autoload 'evilmi-cmake-get-tag "evil-matchit/evil-matchit-cmake" "\


\(fn)" nil nil)

(autoload 'evilmi-cmake-jump "evil-matchit/evil-matchit-cmake" "\


\(fn RLT NUM)" nil nil)

;;;***

;;;### (autoloads (evilmi-fortran-jump evilmi-fortran-get-tag) "evil-matchit/evil-matchit-fortran"
;;;;;;  "evil-matchit/evil-matchit-fortran.el" (21817 40361 574240
;;;;;;  339000))
;;; Generated autoloads from evil-matchit/evil-matchit-fortran.el

(autoload 'evilmi-fortran-get-tag "evil-matchit/evil-matchit-fortran" "\


\(fn)" nil nil)

(autoload 'evilmi-fortran-jump "evil-matchit/evil-matchit-fortran" "\


\(fn RLT NUM)" nil nil)

;;;***

;;;### (autoloads (evilmi-html-jump evilmi-html-get-tag) "evil-matchit/evil-matchit-html"
;;;;;;  "evil-matchit/evil-matchit-html.el" (21817 40361 574240 339000))
;;; Generated autoloads from evil-matchit/evil-matchit-html.el

(autoload 'evilmi-html-get-tag "evil-matchit/evil-matchit-html" "\


\(fn)" nil nil)

(autoload 'evilmi-html-jump "evil-matchit/evil-matchit-html" "\


\(fn RLT NUM)" nil nil)

;;;***

;;;### (autoloads (evilmi-javascript-jump evilmi-javascript-get-tag)
;;;;;;  "evil-matchit/evil-matchit-javascript" "evil-matchit/evil-matchit-javascript.el"
;;;;;;  (21817 40361 574240 339000))
;;; Generated autoloads from evil-matchit/evil-matchit-javascript.el

(autoload 'evilmi-javascript-get-tag "evil-matchit/evil-matchit-javascript" "\


\(fn)" nil nil)

(autoload 'evilmi-javascript-jump "evil-matchit/evil-matchit-javascript" "\


\(fn RLT NUM)" nil nil)

;;;***

;;;### (autoloads (evilmi-latex-jump evilmi-latex-get-tag) "evil-matchit/evil-matchit-latex"
;;;;;;  "evil-matchit/evil-matchit-latex.el" (21817 40361 574240
;;;;;;  339000))
;;; Generated autoloads from evil-matchit/evil-matchit-latex.el

(autoload 'evilmi-latex-get-tag "evil-matchit/evil-matchit-latex" "\


\(fn)" nil nil)

(autoload 'evilmi-latex-jump "evil-matchit/evil-matchit-latex" "\


\(fn RLT NUM)" nil nil)

;;;***

;;;### (autoloads (evilmi-org-jump evilmi-org-get-tag) "evil-matchit/evil-matchit-org"
;;;;;;  "evil-matchit/evil-matchit-org.el" (21817 40361 574240 339000))
;;; Generated autoloads from evil-matchit/evil-matchit-org.el

(autoload 'evilmi-org-get-tag "evil-matchit/evil-matchit-org" "\


\(fn)" nil nil)

(autoload 'evilmi-org-jump "evil-matchit/evil-matchit-org" "\


\(fn RLT NUM)" nil nil)

;;;***

;;;### (autoloads (evilmi-python-jump evilmi-python-get-tag) "evil-matchit/evil-matchit-python"
;;;;;;  "evil-matchit/evil-matchit-python.el" (21817 40361 574240
;;;;;;  339000))
;;; Generated autoloads from evil-matchit/evil-matchit-python.el

(autoload 'evilmi-python-get-tag "evil-matchit/evil-matchit-python" "\


\(fn)" nil nil)

(autoload 'evilmi-python-jump "evil-matchit/evil-matchit-python" "\


\(fn RLT NUM)" nil nil)

;;;***

;;;### (autoloads (evilmi-ruby-jump evilmi-ruby-get-tag) "evil-matchit/evil-matchit-ruby"
;;;;;;  "evil-matchit/evil-matchit-ruby.el" (21817 40361 574240 339000))
;;; Generated autoloads from evil-matchit/evil-matchit-ruby.el

(autoload 'evilmi-ruby-get-tag "evil-matchit/evil-matchit-ruby" "\


\(fn)" nil nil)

(autoload 'evilmi-ruby-jump "evil-matchit/evil-matchit-ruby" "\


\(fn RLT NUM)" nil nil)

;;;***

;;;### (autoloads (evilmi-script-jump evilmi-script-get-tag) "evil-matchit/evil-matchit-script"
;;;;;;  "evil-matchit/evil-matchit-script.el" (21817 40361 574240
;;;;;;  339000))
;;; Generated autoloads from evil-matchit/evil-matchit-script.el

(autoload 'evilmi-script-get-tag "evil-matchit/evil-matchit-script" "\


\(fn)" nil nil)

(autoload 'evilmi-script-jump "evil-matchit/evil-matchit-script" "\


\(fn RLT NUM)" nil nil)

;;;***

;;;### (autoloads (evilmi-sdk-jump evilmi-sdk-get-tag evilmi-sdk-get-tag-info
;;;;;;  evilmi-sdk-member) "evil-matchit/evil-matchit-sdk" "evil-matchit/evil-matchit-sdk.el"
;;;;;;  (21817 40361 574240 339000))
;;; Generated autoloads from evil-matchit/evil-matchit-sdk.el

(autoload 'evilmi-sdk-member "evil-matchit/evil-matchit-sdk" "\
check if KEYWORD exist in LIST

\(fn KEYWORD LIST)" nil nil)

(autoload 'evilmi-sdk-get-tag-info "evil-matchit/evil-matchit-sdk" "\
return (row column is-function-exit-point keyword),
the row and column marked position in evilmi-mylang-match-tags
is-function-exit-point could be 'FN_EXIT' or other status

\(fn KEYWORD MATCH-TAGS)" nil nil)

(autoload 'evilmi-sdk-get-tag "evil-matchit/evil-matchit-sdk" "\
return '(start-point tag-info)

\(fn MATCH-TAGS HOWTOS)" nil nil)

(autoload 'evilmi-sdk-jump "evil-matchit/evil-matchit-sdk" "\


\(fn RLT NUM MATCH-TAGS HOWTOS)" nil nil)

;;;***

;;;### (autoloads (evilmi-sh-jump evilmi-sh-get-tag) "evil-matchit/evil-matchit-sh"
;;;;;;  "evil-matchit/evil-matchit-sh.el" (21817 40361 574240 339000))
;;; Generated autoloads from evil-matchit/evil-matchit-sh.el

(autoload 'evilmi-sh-get-tag "evil-matchit/evil-matchit-sh" "\


\(fn)" nil nil)

(autoload 'evilmi-sh-jump "evil-matchit/evil-matchit-sh" "\


\(fn RLT NUM)" nil nil)

;;;***

;;;### (autoloads (evilmi-simple-jump evilmi-simple-get-tag) "evil-matchit/evil-matchit-simple"
;;;;;;  "evil-matchit/evil-matchit-simple.el" (21817 40361 574240
;;;;;;  339000))
;;; Generated autoloads from evil-matchit/evil-matchit-simple.el

(autoload 'evilmi-simple-get-tag "evil-matchit/evil-matchit-simple" "\


\(fn)" nil nil)

(autoload 'evilmi-simple-jump "evil-matchit/evil-matchit-simple" "\


\(fn RLT NUM)" nil nil)

;;;***

;;;### (autoloads (evilmi-sql-jump evilmi-sql-get-tag) "evil-matchit/evil-matchit-sql"
;;;;;;  "evil-matchit/evil-matchit-sql.el" (21817 40361 574240 339000))
;;; Generated autoloads from evil-matchit/evil-matchit-sql.el

(autoload 'evilmi-sql-get-tag "evil-matchit/evil-matchit-sql" "\


\(fn)" nil nil)

(autoload 'evilmi-sql-jump "evil-matchit/evil-matchit-sql" "\


\(fn RLT NUM)" nil nil)

;;;***

;;;### (autoloads (evilmi-template-jump evilmi-template-get-tag)
;;;;;;  "evil-matchit/evil-matchit-template" "evil-matchit/evil-matchit-template.el"
;;;;;;  (21817 40361 574240 339000))
;;; Generated autoloads from evil-matchit/evil-matchit-template.el

(autoload 'evilmi-template-get-tag "evil-matchit/evil-matchit-template" "\


\(fn)" nil nil)

(autoload 'evilmi-template-jump "evil-matchit/evil-matchit-template" "\


\(fn RLT NUM)" nil nil)

;;;***

;;;### (autoloads nil "evil-nerd-commenter/evil-nerd-commenter" "evil-nerd-commenter/evil-nerd-commenter.el"
;;;;;;  (21828 19966 546855 231000))
;;; Generated autoloads from evil-nerd-commenter/evil-nerd-commenter.el

(autoload 'evilnc-comment-or-uncomment-paragraphs "evil-nerd-commenter/evil-nerd-commenter" "\
Comment or uncomment paragraph(s). A paragraph is a continuation non-empty lines.
Paragraphs are separated by empty lines.

\(fn &optional NUM)" t nil)

(autoload 'evilnc-comment-or-uncomment-to-the-line "evil-nerd-commenter/evil-nerd-commenter" "\
Comment or uncomment from the current line to the LINENUM line

\(fn &optional LINENUM)" t nil)

(autoload 'evilnc-quick-comment-or-uncomment-to-the-line "evil-nerd-commenter/evil-nerd-commenter" "\
Comment or uncomment to line number by specifying its last digit(s)
For exmaple, you can use 'C-u 53 M-x evilnc-quick-comment-or-uncomment-to-the-line'
or 'C-u 3 M-x evilnc-quick-comment-or-uncomment-to-the-line' to comment to the line 6453

\(fn &optional UNITS)" t nil)

(autoload 'evilnc-toggle-invert-comment-line-by-line "evil-nerd-commenter/evil-nerd-commenter" "\


\(fn)" t nil)

(autoload 'evilnc-toggle-comment-empty-lines "evil-nerd-commenter/evil-nerd-commenter" "\


\(fn)" t nil)

(autoload 'evilnc-comment-or-uncomment-lines "evil-nerd-commenter/evil-nerd-commenter" "\
Comment or uncomment NUM lines. NUM could be negative.
   Case 1: If no region selected, comment/uncomment on current line. if NUM>1, comment/uncomment
   extra N-1 lines from next line
   Case 2: If a region selected, the region is expand to make sure the region contain
   whole lines. Then we comment/uncomment the expanded region. NUM is ignored.

\(fn &optional NUM)" t nil)

(autoload 'evilnc-copy-and-comment-lines "evil-nerd-commenter/evil-nerd-commenter" "\
Copy and paste NUM lines. Then comment the original lines. NUM could be negative.
   Case 1: If no region selected, operate on current line. if NUM>1, comment/uncomment
   extra N-1 lines from next line
   Case 2: If a region selected, the region is expand to make sure the region contain
   whole lines. Then we operate the expanded region. NUM is ignored.

\(fn &optional NUM)" t nil)

(autoload 'evilnc-copy-to-line "evil-nerd-commenter/evil-nerd-commenter" "\
Copy from the current line to the LINENUM line, for non-evil user only

\(fn &optional LINENUM)" t nil)

(autoload 'evilnc-kill-to-line "evil-nerd-commenter/evil-nerd-commenter" "\
Kill from the current line to the LINENUM line, for non-evil user only

\(fn &optional LINENUM)" t nil)

(autoload 'evilnc-version "evil-nerd-commenter/evil-nerd-commenter" "\


\(fn)" t nil)

(autoload 'evilnc-default-hotkeys "evil-nerd-commenter/evil-nerd-commenter" "\
Set the hotkeys of evil-nerd-comment

\(fn)" t nil)

;;;***

;;;### (autoloads nil "evil-surround/evil-surround" "evil-surround/evil-surround.el"
;;;;;;  (21825 39345 48297 409000))
;;; Generated autoloads from evil-surround/evil-surround.el

(autoload 'evil-surround-delete "evil-surround/evil-surround" "\
Delete the surrounding delimiters represented by CHAR.
Alternatively, the text to delete can be represented with
the overlays OUTER and INNER, where OUTER includes the delimiters
and INNER excludes them. The intersection (i.e., difference)
between these overlays is what is deleted.

\(fn CHAR &optional OUTER INNER)" t nil)

(autoload 'evil-surround-change "evil-surround/evil-surround" "\
Change the surrounding delimiters represented by CHAR.
Alternatively, the text to delete can be represented with the
overlays OUTER and INNER, which are passed to `evil-surround-delete'.

\(fn CHAR &optional OUTER INNER)" t nil)

(autoload 'evil-surround-mode "evil-surround/evil-surround" "\
Buffer-local minor mode to emulate surround.vim.

\(fn &optional ARG)" t nil)

(autoload 'turn-on-evil-surround-mode "evil-surround/evil-surround" "\
Enable evil-surround-mode in the current buffer.

\(fn)" nil nil)

(autoload 'turn-off-evil-surround-mode "evil-surround/evil-surround" "\
Disable evil-surround-mode in the current buffer.

\(fn)" nil nil)

(defvar global-evil-surround-mode nil "\
Non-nil if Global-Evil-Surround mode is enabled.
See the command `global-evil-surround-mode' for a description of this minor mode.
Setting this variable directly does not take effect;
either customize it (see the info node `Easy Customization')
or call the function `global-evil-surround-mode'.")

(custom-autoload 'global-evil-surround-mode "evil-surround/evil-surround" nil)

(autoload 'global-evil-surround-mode "evil-surround/evil-surround" "\
Toggle Evil-Surround mode in all buffers.
With prefix ARG, enable Global-Evil-Surround mode if ARG is positive;
otherwise, disable it.  If called from Lisp, enable the mode if
ARG is omitted or nil.

Evil-Surround mode is enabled in all buffers where
`turn-on-evil-surround-mode' would do it.
See `evil-surround-mode' for more information on Evil-Surround mode.

\(fn &optional ARG)" t nil)

;;;***

;;;### (autoloads (evil-mode) "evil/evil" "evil/evil.el" (21817 38819
;;;;;;  514658 839000))
;;; Generated autoloads from evil/evil.el

(defvar evil-mode nil "\
Non-nil if Evil mode is enabled.
See the command `evil-mode' for a description of this minor mode.
Setting this variable directly does not take effect;
either customize it (see the info node `Easy Customization')
or call the function `evil-mode'.")

(custom-autoload 'evil-mode "evil/evil" nil)

(autoload 'evil-mode "evil/evil" "\
Toggle Evil-Local mode in all buffers.
With prefix ARG, enable Evil mode if ARG is positive;
otherwise, disable it.  If called from Lisp, enable the mode if
ARG is omitted or nil.

Evil-Local mode is enabled in all buffers where
`evil-initialize' would do it.
See `evil-local-mode' for more information on Evil-Local mode.

\(fn &optional ARG)" t nil)

;;;***

;;;### (autoloads (goto-last-change-reverse goto-last-change) "goto-chg/goto-chg"
;;;;;;  "goto-chg/goto-chg.el" (21817 38068 12757 850000))
;;; Generated autoloads from goto-chg/goto-chg.el

(autoload 'goto-last-change "goto-chg/goto-chg" "\
Go to the point where the last edit was made in the current buffer.
Repeat the command to go to the second last edit, etc.

To go back to more recent edit, the reverse of this command, use \\[goto-last-change-reverse]
or precede this command with \\[universal-argument] - (minus).

It does not go to the same point twice even if there has been many edits
there. I call the minimal distance between distinguishable edits \"span\".
Set variable `glc-default-span' to control how close is \"the same point\".
Default span is 8.
The span can be changed temporarily with \\[universal-argument] right before \\[goto-last-change]:
\\[universal-argument] <NUMBER> set current span to that number,
\\[universal-argument] (no number) multiplies span by 4, starting with default.
The so set span remains until it is changed again with \\[universal-argument], or the consecutive
repetition of this command is ended by any other command.

When span is zero (i.e. \\[universal-argument] 0) subsequent \\[goto-last-change] visits each and
every point of edit and a message shows what change was made there.
In this case it may go to the same point twice.

This command uses undo information. If undo is disabled, so is this command.
At times, when undo information becomes too large, the oldest information is
discarded. See variable `undo-limit'.

\(fn ARG)" t nil)

(autoload 'goto-last-change-reverse "goto-chg/goto-chg" "\
Go back to more recent changes after \\[goto-last-change] have been used.
See `goto-last-change' for use of prefix argument.

\(fn ARG)" t nil)

;;;***

;;;### (autoloads nil "indent-guide/indent-guide" "indent-guide/indent-guide.el"
;;;;;;  (21828 19761 499432 198000))
;;; Generated autoloads from indent-guide/indent-guide.el

(autoload 'indent-guide-mode "indent-guide/indent-guide" "\
show vertical lines to guide indentation

\(fn &optional ARG)" t nil)

(defvar indent-guide-global-mode nil "\
Non-nil if Indent-Guide-Global mode is enabled.
See the command `indent-guide-global-mode' for a description of this minor mode.
Setting this variable directly does not take effect;
either customize it (see the info node `Easy Customization')
or call the function `indent-guide-global-mode'.")

(custom-autoload 'indent-guide-global-mode "indent-guide/indent-guide" nil)

(autoload 'indent-guide-global-mode "indent-guide/indent-guide" "\
Toggle Indent-Guide mode in all buffers.
With prefix ARG, enable Indent-Guide-Global mode if ARG is positive;
otherwise, disable it.  If called from Lisp, enable the mode if
ARG is omitted or nil.

Indent-Guide mode is enabled in all buffers where
`(lambda nil (unless (cl-some (quote derived-mode-p) indent-guide-inhibit-modes) (indent-guide-mode 1)))' would do it.
See `indent-guide-mode' for more information on Indent-Guide mode.

\(fn &optional ARG)" t nil)

;;;***

;;;### (autoloads nil "inf-ruby/inf-ruby" "inf-ruby/inf-ruby.el"
;;;;;;  (21828 3305 952924 920000))
;;; Generated autoloads from inf-ruby/inf-ruby.el

(defvar ruby-source-modes '(ruby-mode enh-ruby-mode) "\
Used to determine if a buffer contains Ruby source code.
If it's loaded into a buffer that is in one of these major modes, it's
considered a ruby source file by `ruby-load-file'.
Used by these commands to determine defaults.")

(autoload 'inf-ruby-setup-keybindings "inf-ruby/inf-ruby" "\
Hook up `inf-ruby-minor-mode' to each of `ruby-source-modes'.

\(fn)" nil nil)

(autoload 'inf-ruby-minor-mode "inf-ruby/inf-ruby" "\
Minor mode for interacting with the inferior process buffer.

The following commands are available:

\\{inf-ruby-minor-mode-map}

\(fn &optional ARG)" t nil)

(autoload 'inf-ruby "inf-ruby/inf-ruby" "\
Run an inferior Ruby process in a buffer.
With prefix argument, prompts for which Ruby implementation
\(from the list `inf-ruby-implementations') to use.  Runs the
hooks `inf-ruby-mode-hook' (after the `comint-mode-hook' is
run).

\(fn &optional IMPL)" t nil)

(autoload 'run-ruby "inf-ruby/inf-ruby" "\
Run an inferior Ruby process, input and output via buffer `*NAME*'.
If there is a process already running in `*NAME*', switch to that buffer.

NAME defaults to \"ruby\". COMMAND defaults to the default entry
in `inf-ruby-implementations'.

\(Type \\[describe-mode] in the process buffer for the list of commands.)

\(fn &optional COMMAND NAME)" t nil)

(autoload 'inf-ruby-switch-setup "inf-ruby/inf-ruby" "\
Modify `rspec-compilation-mode' and `ruby-compilation-mode'
keymaps to bind `inf-ruby-switch-from-compilation' to `С-x C-q'.

\(fn)" nil nil)

(autoload 'inf-ruby-console-auto "inf-ruby/inf-ruby" "\
Run the appropriate Ruby console command.
The command and and the directory to run it from are detected
automatically.

\(fn)" t nil)

(autoload 'inf-ruby-console-rails "inf-ruby/inf-ruby" "\
Run Rails console in DIR.

\(fn DIR)" t nil)

(autoload 'inf-ruby-console-gem "inf-ruby/inf-ruby" "\
Run IRB console for the gem in DIR.
The main module should be loaded automatically.  If DIR contains a
Gemfile, it should use the `gemspec' instruction.

\(fn DIR)" t nil)

(autoload 'inf-ruby-console-default "inf-ruby/inf-ruby" "\
Run custom console.rb, Pry, or bundle console, in DIR.

\(fn DIR)" t nil)

(autoload 'inf-ruby-file-contents-match "inf-ruby/inf-ruby" "\


\(fn FILE REGEXP &optional MATCH-GROUP)" nil nil)
 (dolist (mode ruby-source-modes) (add-hook (intern (format "%s-hook" mode)) 'inf-ruby-minor-mode))

;;;***

;;;### (autoloads nil "monokai-theme/monokai-theme" "monokai-theme/monokai-theme.el"
;;;;;;  (21821 34643 590715 569000))
;;; Generated autoloads from monokai-theme/monokai-theme.el

(when (and (boundp 'custom-theme-load-path) load-file-name) (add-to-list 'custom-theme-load-path (file-name-as-directory (file-name-directory load-file-name))))

;;;***

;;;### (autoloads (doctest-mode doctest-register-mmm-classes) "python-mode/test/doctest-mode"
;;;;;;  "python-mode/test/doctest-mode.el" (21821 22943 740958 0))
;;; Generated autoloads from python-mode/test/doctest-mode.el

(autoload 'doctest-register-mmm-classes "python-mode/test/doctest-mode" "\
Register doctest's mmm classes, allowing doctest to be used as a
submode region in other major modes, such as python-mode and rst-mode.
Two classes are registered:

`doctest-docstring'

    Used to edit docstrings containing doctest examples in python-
    mode.  Docstring submode regions start and end with triple-quoted
    strings (\"\"\").  In order to avoid confusing start-string
    markers and end-string markers, all triple-quote strings in the
    buffer are treated as submode regions (even if they're not
    actually docstrings).  Use (C-c % C-d) to insert a new doctest-
    docstring region.  When `doctest-execute' (C-c C-c) is called
    inside a doctest-docstring region, it executes just the current
    docstring.  The globals for this execution are constructed by
    importing the current buffer's contents in Python.

`doctest-example'

    Used to edit doctest examples in text-editing modes, such as
    `rst-mode' or `text-mode'.  Docstring submode regions start with
    optionally indented prompts (>>>) and end with blank lines.  Use
    (C-c % C-e) to insert a new doctest-example region.  When
    `doctest-execute' (C-c C-c) is called inside a doctest-example
    region, it executes all examples in the buffer.

If ADD-MODE-EXT-CLASSES is true, then register the new classes in
`mmm-mode-ext-classes-alist', which will cause them to be used by
default in the following modes:

    doctest-docstring:  python-mode
    doctest-example:    rst-mode

If FIX-MMM-FONTIFY-REGION-BUG is true, then register a hook that will
fix a bug in `mmm-fontify-region' that affects some (but not all)
versions of emacs.  (See `doctest-fixed-mmm-fontify-region' for more
info.)

\(fn &optional ADD-MODE-EXT-CLASSES FIX-MMM-FONTIFY-REGION-BUG)" t nil)

(add-to-list 'auto-mode-alist '("\\.doctest$" . doctest-mode))

(autoload 'doctest-mode "python-mode/test/doctest-mode" "\
A major mode for editing text files that contain Python
doctest examples.  Doctest is a testing framework for Python that
emulates an interactive session, and checks the result of each
command.  For more information, see the Python library reference:
<http://docs.python.org/lib/module-doctest.html>

`doctest-mode' defines three kinds of line, each of which is
treated differently:

  - 'Source lines' are lines consisting of a Python prompt
    ('>>>' or '...'), followed by source code.  Source lines are
    colored (similarly to `python-mode') and auto-indented.

  - 'Output lines' are non-blank lines immediately following
    source lines.  They are colored using several doctest-
    specific output faces.

  - 'Text lines' are any other lines.  They are not processed in
    any special way.

\\{doctest-mode-map}

\(fn)" t nil)

;;;***

;;;### (autoloads nil "robe-mode/ac-robe" "robe-mode/ac-robe.el"
;;;;;;  (21828 3308 447676 877000))
;;; Generated autoloads from robe-mode/ac-robe.el

(autoload 'ac-robe-available "robe-mode/ac-robe" "\
Return t if `robe-mode' completions are available, otherwise nil.

\(fn)" nil nil)

(autoload 'ac-robe-setup "robe-mode/ac-robe" "\


\(fn)" nil nil)

(defconst ac-source-robe '((available . ac-robe-available) (candidates . ac-robe-candidates) (document . ac-robe-doc) (symbol . "r")) "\
`auto-complete' completion source for Ruby using `robe-mode'.")

;;;***

;;;### (autoloads nil "robe-mode/company-robe" "robe-mode/company-robe.el"
;;;;;;  (21828 3308 447676 877000))
;;; Generated autoloads from robe-mode/company-robe.el

(autoload 'company-robe "robe-mode/company-robe" "\
A `company-mode' completion back-end for `robe-mode'.

\(fn COMMAND &optional ARG)" t nil)

;;;***

;;;### (autoloads nil "robe-mode/robe" "robe-mode/robe.el" (21828
;;;;;;  3308 447676 877000))
;;; Generated autoloads from robe-mode/robe.el

(autoload 'robe-mode "robe-mode/robe" "\
Improved navigation for Ruby.

The following commands are available:

\\{robe-mode-map}

\(fn &optional ARG)" t nil)

;;;***

;;;### (autoloads (sublimity-global-mode sublimity-map sublimity-scroll
;;;;;;  sublimity-mode) "sublimity/sublimity" "sublimity/sublimity.el"
;;;;;;  (21818 43499 104918 853000))
;;; Generated autoloads from sublimity/sublimity.el

(defvar sublimity-mode nil "\
Non-nil if Sublimity mode is enabled.
See the command `sublimity-mode' for a description of this minor mode.
Setting this variable directly does not take effect;
either customize it (see the info node `Easy Customization')
or call the function `sublimity-mode'.")

(custom-autoload 'sublimity-mode "sublimity/sublimity" nil)

(autoload 'sublimity-mode "sublimity/sublimity" "\
smooth-scrolling and minimap, like sublime editor

\(fn &optional ARG)" t nil)

(autoload 'sublimity-scroll "sublimity/sublimity" "\


\(fn)" t nil)

(autoload 'sublimity-map "sublimity/sublimity" "\


\(fn)" t nil)

(autoload 'sublimity-global-mode "sublimity/sublimity" "\


\(fn &optional N)" t nil)

;;;***

;;;### (autoloads (global-undo-tree-mode undo-tree-mode) "undo-tree/undo-tree"
;;;;;;  "undo-tree/undo-tree.el" (21817 38065 985771 869000))
;;; Generated autoloads from undo-tree/undo-tree.el

(autoload 'undo-tree-mode "undo-tree/undo-tree" "\
Toggle undo-tree mode.
With no argument, this command toggles the mode.
A positive prefix argument turns the mode on.
A negative prefix argument turns it off.

Undo-tree-mode replaces Emacs' standard undo feature with a more
powerful yet easier to use version, that treats the undo history
as what it is: a tree.

The following keys are available in `undo-tree-mode':

  \\{undo-tree-map}

Within the undo-tree visualizer, the following keys are available:

  \\{undo-tree-visualizer-mode-map}

\(fn &optional ARG)" t nil)

(defvar global-undo-tree-mode nil "\
Non-nil if Global-Undo-Tree mode is enabled.
See the command `global-undo-tree-mode' for a description of this minor mode.
Setting this variable directly does not take effect;
either customize it (see the info node `Easy Customization')
or call the function `global-undo-tree-mode'.")

(custom-autoload 'global-undo-tree-mode "undo-tree/undo-tree" nil)

(autoload 'global-undo-tree-mode "undo-tree/undo-tree" "\
Toggle Undo-Tree mode in all buffers.
With prefix ARG, enable Global-Undo-Tree mode if ARG is positive;
otherwise, disable it.  If called from Lisp, enable the mode if
ARG is omitted or nil.

Undo-Tree mode is enabled in all buffers where
`turn-on-undo-tree-mode' would do it.
See `undo-tree-mode' for more information on Undo-Tree mode.

\(fn &optional ARG)" t nil)

;;;***

;;;### (autoloads nil nil ("auto-complete/auto-complete-pkg.el" "el-get/el-get-autoloading.el"
;;;;;;  "el-get/el-get-build.el" "el-get/el-get-byte-compile.el"
;;;;;;  "el-get/el-get-core.el" "el-get/el-get-custom.el" "el-get/el-get-dependencies.el"
;;;;;;  "el-get/el-get-install.el" "el-get/el-get-methods.el" "el-get/el-get-notify.el"
;;;;;;  "el-get/el-get-recipes.el" "el-get/el-get-status.el" "evil-matchit/evil-matchit-pkg.el"
;;;;;;  "evil-nerd-commenter/evil-nerd-commenter-operator.el" "evil-nerd-commenter/evil-nerd-commenter-pkg.el"
;;;;;;  "evil-org-mode/evil-org.el" "evil/evil-command-window.el"
;;;;;;  "evil/evil-commands.el" "evil/evil-common.el" "evil/evil-core.el"
;;;;;;  "evil/evil-digraphs.el" "evil/evil-ex.el" "evil/evil-integration.el"
;;;;;;  "evil/evil-macros.el" "evil/evil-maps.el" "evil/evil-pkg.el"
;;;;;;  "evil/evil-repeat.el" "evil/evil-search.el" "evil/evil-states.el"
;;;;;;  "evil/evil-tests.el" "evil/evil-types.el" "evil/evil-vars.el"
;;;;;;  "fuzzy/fuzzy.el" "popup/popup.el" "python-mode/python-mode-pkg.el"
;;;;;;  "python-mode/python-mode.el" "python-mode/test/pars-part-output.el"
;;;;;;  "python-mode/test/py-bug-numbered-tests.el" "python-mode/test/py-completion-tests.el"
;;;;;;  "python-mode/test/py-ert-always-split-lp-1361531-tests.el"
;;;;;;  "python-mode/test/py-ert-beginning-tests.el" "python-mode/test/py-ert-end-tests.el"
;;;;;;  "python-mode/test/py-ert-function-tests.el" "python-mode/test/py-ert-interactive-tests.el"
;;;;;;  "python-mode/test/py-ert-just-two-split-lp-1361531-tests.el"
;;;;;;  "python-mode/test/py-ert-tests-1.el" "python-mode/test/py-ert-tests-2.el"
;;;;;;  "python-mode/test/py-ert-variablen-tests.el" "python-mode/test/py-multi-split-window-on-execute-lp-1361531-test.el"
;;;;;;  "python-mode/test/py-shell-completion-tests.el" "python-mode/test/py-split-window-on-execute-lp-1361531-test.el"
;;;;;;  "python-mode/test/python-extended-executes-test.el" "python-mode/test/python-mode-syntax-test.el"
;;;;;;  "python-mode/test/python-mode-test.el" "python-mode/test/setup-ert-tests.el"
;;;;;;  "robe-mode/build.el" "sublimity/sublimity-attractive.el"
;;;;;;  "sublimity/sublimity-map.el" "sublimity/sublimity-scroll.el")
;;;;;;  (21828 19966 884685 493000))

;;;***

(provide '.loaddefs)
;; Local Variables:
;; version-control: never
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; .loaddefs.el ends here
