((artist-xmas status "installed" recipe
              (:name artist-xmas :auto-generated t :type emacswiki :description "xemacs port of artist.el" :website "https://raw.github.com/emacsmirror/emacswiki.org/master/artist-xmas.el"))
 (auto-complete status "installed" recipe
                (:name auto-complete :website "https://github.com/auto-complete/auto-complete" :description "The most intelligent auto-completion extension." :type github :pkgname "auto-complete/auto-complete" :depends
                       (popup fuzzy)
                       :features auto-complete-config :post-init
                       (progn
                         (add-to-list 'ac-dictionary-directories
                                      (expand-file-name "dict" default-directory))
                         (ac-config-default))))
 (el-get status "installed" recipe
         (:name el-get :website "https://github.com/dimitri/el-get#readme" :description "Manage the external elisp bits and pieces you depend upon." :type github :branch "master" :pkgname "dimitri/el-get" :info "." :compile
                ("el-get.*\\.el$" "methods/")
                :features el-get :post-init
                (when
                    (memq 'el-get
                          (bound-and-true-p package-activated-list))
                  (message "Deleting melpa bootstrap el-get")
                  (unless package--initialized
                    (package-initialize t))
                  (when
                      (package-installed-p 'el-get)
                    (let
                        ((feats
                          (delete-dups
                           (el-get-package-features
                            (el-get-elpa-package-directory 'el-get)))))
                      (el-get-elpa-delete-package 'el-get)
                      (dolist
                          (feat feats)
                        (unload-feature feat t))))
                  (require 'el-get))))
 (enh-ruby-mode status "installed" recipe
                (:name enh-ruby-mode :description "Replacement for ruby-mode which uses ruby 1.9's Ripper to parse and indent. From Zenspider's repository." :type github :pkgname "zenspider/enhanced-ruby-mode" :features enh-ruby-mode :prepare
                       (progn
                         (autoload 'enh-ruby-mode "enh-ruby-mode" "Major mode for ruby files" t)
                         (add-to-list 'interpreter-mode-alist
                                      '("ruby" . enh-ruby-mode))
                         (add-to-list 'auto-mode-alist
                                      '("\\.rake$" . enh-ruby-mode))
                         (add-to-list 'auto-mode-alist
                                      '("Rakefile$" . enh-ruby-mode))
                         (add-to-list 'auto-mode-alist
                                      '("\\.gemspec$" . enh-ruby-mode))
                         (add-to-list 'auto-mode-alist
                                      '("Gemfile$" . enh-ruby-mode))
                         (add-to-list 'auto-mode-alist
                                      '("\\.rb$" . enh-ruby-mode)))))
 (evil status "installed" recipe
       (:name evil :website "https://bitbucket.org/lyro/evil" :description "Evil is an extensible vi layer for Emacs. It\n       emulates the main features of Vim, and provides facilities\n       for writing custom extensions." :type hg :url "https://bitbucket.org/lyro/evil" :features evil :depends
              (undo-tree goto-chg)
              :build
              (("make" "info" "all"))
              :build/berkeley-unix
              (("gmake" "info" "all"))
              :build/darwin
              `(("make" ,(format "EMACS=%s" el-get-emacs)
                 "info" "all"))
              :info "doc"))
 (evil-leader status "installed" recipe
              (:name evil-leader :website "http://github.com/cofi/evil-leader" :description "Add <leader> shortcuts to Evil, the extensible vim\n       emulation layer" :type github :pkgname "cofi/evil-leader" :features evil-leader :depends evil))
 (evil-matchit status "installed" recipe
               (:name evil-matchit :type github :description "Vim matchit ported to Evil" :pkgname "redguardtoo/evil-matchit" :depends evil))
 (evil-nerd-commenter status "installed" recipe
                      (:name evil-nerd-commenter :website "http://github.com/redguardtoo/evil-nerd-commenter" :description "Comment/uncomment lines efficiently. Like Nerd Commenter in Vim" :type github :pkgname "redguardtoo/evil-nerd-commenter" :depends evil))
 (evil-org-mode status "installed" recipe
                (:name evil-org-mode :website "http://github.com/edwtjo/evil-org-mode" :description "Supplemental evil-mode keybindings to emacs org-mode." :type github :pkgname "edwtjo/evil-org-mode" :depends
                       (evil evil-leader)))
 (evil-surround status "installed" recipe
                (:name evil-surround :website "http://github.com/timcharper/evil-surround" :description "Emulate Tim Pope's surround.vim in evil, the extensible vim\n       emulation layer for emacs" :type github :pkgname "timcharper/evil-surround" :features evil-surround :post-init
                       (global-evil-surround-mode 1)
                       :depends evil))
 (fuzzy status "installed" recipe
        (:name fuzzy :website "https://github.com/auto-complete/fuzzy-el" :description "Fuzzy matching utilities for GNU Emacs" :type github :pkgname "auto-complete/fuzzy-el"))
 (goto-chg status "installed" recipe
           (:name goto-chg :description "Goto the point of the most recent edit in the buffer." :type emacswiki :features goto-chg))
 (indent-guide status "installed" recipe
               (:name indent-guide :description "show vertical lines to guide indentation." :website "https://github.com/zk-phi/indent-guide" :type github :pkgname "zk-phi/indent-guide"))
 (inf-ruby status "installed" recipe
           (:name inf-ruby :description "Inferior Ruby Mode - ruby process in a buffer." :type github :pkgname "nonsequitur/inf-ruby"))
 (monokai-theme status "installed" recipe
                (:name monokai-theme :website "https://github.com/oneKelvinSmith/monokai-emacs" :description "A fruity color theme for Emacs." :type github :pkgname "oneKelvinSmith/monokai-emacs" :prepare
                       (add-to-list 'custom-theme-load-path default-directory)))
 (popup status "installed" recipe
        (:name popup :website "https://github.com/auto-complete/popup-el" :description "Visual Popup Interface Library for Emacs" :type github :submodule nil :pkgname "auto-complete/popup-el"))
 (python-mode status "installed" recipe
              (:name python-mode :description "Major mode for editing Python programs" :type bzr :url "lp:python-mode" :load-path
                     ("." "test")
                     :compile nil :prepare
                     (progn
                       (autoload 'python-mode "python-mode" "Python editing mode." t)
                       (autoload 'doctest-mode "doctest-mode" "Doctest unittest editing mode." t)
                       (setq py-install-directory
                             (el-get-package-directory "python-mode"))
                       (add-to-list 'auto-mode-alist
                                    '("\\.py$" . python-mode))
                       (add-to-list 'interpreter-mode-alist
                                    '("python" . python-mode)))))
 (robe-mode status "installed" recipe
            (:name robe-mode :type github :description "Code navigation, documentation lookup and completion for Ruby" :pkgname "dgutov/robe" :website "https://github.com/dgutov/robe" :depends
                   (inf-ruby)
                   :post-init
                   (add-hook 'ruby-mode-hook 'robe-mode)))
 (sublimity status "installed" recipe
            (:name sublimity :description "smooth-scrolling, minimap and distraction-free mode." :website "https://github.com/zk-phi/sublimity" :type github :pkgname "zk-phi/sublimity"))
 (undo-tree status "installed" recipe
            (:name undo-tree :description "Treat undo history as a tree" :website "http://www.dr-qubit.org/emacs.php" :type git :url "http://www.dr-qubit.org/git/undo-tree.git/")))
