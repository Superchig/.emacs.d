;;;; Plugins installation and configuration

;; Company Mode activation and Autocomplete disabled
(global-company-mode)
(auto-complete-mode 0)

;; Rebind C-x C-b to buffer-menu instead of list-buffers
(global-set-key "\C-x\C-b" 'buffer-menu)

;; Evil-mode activation
(require 'evil)
(evil-mode 1)

;; Keychords for Evil mode rebindings
(add-to-list 'load-path "~/.emacs.d/lisp")
(require 'key-chord)
(key-chord-mode 1)
(key-chord-define-global "kj" 'evil-normal-state)

;; Evil-Leader setup
(require 'evil-leader)

;; Evil-Org-Mode
(require 'evil-org)

;; Evil mode unbind space and RET
(defun my-move-key (keymap-from keymap-to key)
  "Moves key binding from one keymap to another, deleting from the old location. "
  (define-key keymap-to key (lookup-key keymap-from key))
  (define-key keymap-from key nil))
(my-move-key evil-motion-state-map evil-normal-state-map (kbd "RET"))
(my-move-key evil-motion-state-map evil-normal-state-map " ")

;; Evil-Mode Key Translations
(defun make-conditional-key-translation (key-from key-to translate-keys-p)
  "Make a Key Translation such that if the translate-keys-p function returns true,
  key-from translates to key-to, else key-from translates to itself.  translate-keys-p
  takes key-from as an argument. "
  (define-key key-translation-map key-from
    (lambda (prompt)
      (if (funcall translate-keys-p key-from) key-to key-from))))
(defun my-translate-keys-p (key-from)
  "Returns whether conditional key translations should be active.  See make-conditional-key-translation function. "
  (and
   ;; Only allow a non identity translation if we're beginning a Key Sequence.
   (equal key-from (this-command-keys))
   (or (evil-motion-state-p) (evil-normal-state-p) (evil-visual-state-p))))
;;(define-key evil-normal-state-map "c" nil) ;; I'm not entirely sure what this does
;;(define-key evil-motion-state-map "cu" 'universal-argument) ;; Or this one, either
;;(make-conditional-key-translation (kbd "ch") (kbd "C-h") 'my-translate-keys-p)
;;(make-conditional-key-translation (kbd "g") (kbd "C-x") 'my-translate-keys-p)')
(make-conditional-key-translation (kbd "C-l") (kbd "C-S-w l") 'my-translate-keys-p)
(make-conditional-key-translation (kbd "C-h") (kbd "C-S-w h") 'my-translate-keys-p)
(make-conditional-key-translation (kbd "C-j") (kbd "C-S-w j") 'my-translate-keys-p)
(make-conditional-key-translation (kbd "C-k") (kbd "C-S-w k") 'my-translate-keys-p)

;; Evil surround
(require 'evil-surround)
(global-evil-surround-mode 1)

;; Evil match-it
(require 'evil-matchit)
(global-evil-matchit-mode 1)

;; Evil-nerd-commenter
(require 'evil-nerd-commenter)
(evilnc-default-hotkeys)

;; Sublimity setup
(require 'sublimity)
(require 'sublimity-scroll)
(sublimity-mode 1)

;; Activate Org-Mode
(add-hook 'org-mode-hook 'turn-on-font-lock) ; not needed when global-font-lock-mode is on
(global-set-key "\C-cl" 'org-store-link)
(global-set-key "\C-ca" 'org-agenda)
(global-set-key "\C-cb" 'org-iswitchb)

;; Python-mode setup
(setq py-install-directory "~/emacs.d/el-get/python-mode")
(add-to-list 'load-path py-install-directory)
(require 'python-mode)

;; Ipython
(setq-default py-shell-name "ipython")
(setq-default py-which-bufname "IPython")
                                        ; Use the wx backend, for both mayavi and matplotlib
(setq py-python-command-args
      '("--gui=wx" "--pylan=wx" "-colors" "Linux"))
(setq py-force-py-shell-name-p t)

                                        ; Switch to the interpreter after executing code
(setq py-shell-switch-buffers-on-execute-p t)
(setq py-switch-buffers-on-execute-p t)
                                        ; Don't split windows
(setq py-split-window-on-execute-p nil)
                                        ; Try to automatically figure out indentation
(setq py-smart-indentation t)

;; Blackboard theme installation
(require 'monokai-theme)

;; Electric Pair time!
(electric-pair-mode 1)

;; Show Matching Parentheses
(show-paren-mode 1)
(setq show-paren-delay 0)

;; Robe
(require 'robe)
(add-hook 'ruby-mode-hook 'robe-mode)

(setq electric-pair-pairs '(
                            (?\" . ?\")
                            (?\{ . ?\})
                            (?\( . ?\))
                            ) )

;; Indent-Guide
(require 'indent-guide)
(indent-guide-global-mode)
(setq indent-guide-recursive t)

;; Paredit
(autoload 'enable-paredit-mode "paredit" "Turn on pseudo-structural editing of Lisp code." t)
(add-hook 'emacs-lisp-mode-hook       #'enable-paredit-mode)
(add-hook 'eval-expression-minibuffer-setup-hook #'enable-paredit-mode)
(add-hook 'ielm-mode-hook             #'enable-paredit-mode)
(add-hook 'lisp-mode-hook             #'enable-paredit-mode)
(add-hook 'lisp-interaction-mode-hook #'enable-paredit-mode)
(add-hook 'scheme-mode-hook           #'enable-paredit-mode)
