(require 'package)

;; Load packages ourselves
;; Press C-h v on the variable for more documentation
(setq package-enable-at-startup nil)

;; Add MELPA and Org to package-archives
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/"))
(add-to-list 'package-archives '("org" . "https://orgmode.org/elpa/"))

(package-initialize)

;; Refresh the packages descriptions
(unless package-archive-contents
  (package-refresh-contents))

;; Install use-package if it's not installed
(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

(require 'use-package)

;; Install the package org if it's not installed
(unless (package-installed-p 'org)
  (package-refresh-contents)
  (package-install 'org)
  (package-install 'org-plus-contrib))

;; Tell use-package to install a package if it's not already installed
(setq use-package-always-ensure t)

;; Read config.org when available
(when (file-readable-p "~/.emacs.d/emacs.org")
  (org-babel-load-file (expand-file-name "~/.emacs.d/emacs.org")))

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-faces-vector (scroll-bar-mode -1))
 '(ansi-color-names-vector
   (vector "#eaeaea" "#d54e53" "DarkOliveGreen3" "#e7c547" "DeepSkyBlue1" "#c397d8" "#70c0b1" "#181a26"))
 '(blink-cursor-mode nil)
 '(column-number-mode t)
 '(custom-enabled-themes nil)
 '(custom-safe-themes
   (quote
    ("fa2b58bb98b62c3b8cf3b6f02f058ef7827a8e497125de0254f56e373abee088" "57e3f215bef8784157991c4957965aa31bac935aca011b29d7d8e113a652b693" "2540689fd0bc5d74c4682764ff6c94057ba8061a98be5dd21116bf7bf301acfb" "bffa9739ce0752a37d9b1eee78fc00ba159748f50dc328af4be661484848e476" default)))
 '(display-battery-mode t)
 '(display-line-numbers-type nil)
 '(display-time-mode t)
 '(doc-view-continuous t)
 '(fci-rule-color "#14151E")
 '(fringe-mode 0 nil (fringe))
 '(global-display-line-numbers-mode t)
 '(helm-completion-style (quote emacs))
 '(hl-todo-keyword-faces
   (quote
    (("TODO" . "#dc752f")
     ("NEXT" . "#dc752f")
     ("THEM" . "#2d9574")
     ("PROG" . "#4f97d7")
     ("OKAY" . "#4f97d7")
     ("DONT" . "#f2241f")
     ("FAIL" . "#f2241f")
     ("DONE" . "#86dc2f")
     ("NOTE" . "#b1951d")
     ("KLUDGE" . "#b1951d")
     ("HACK" . "#b1951d")
     ("TEMP" . "#b1951d")
     ("FIXME" . "#dc752f")
     ("XXX+" . "#dc752f")
     ("\\?\\?\\?+" . "#dc752f"))))
 '(package-selected-packages
   (quote
    (treemacs-persp treemacs-magit treemacs-icons-dired treemacs-projectile treemacs sr-speedbar projectile helm quelpa company-quickhelp quick-peek lispy emms elcord eldoc-box erc-hl-nicks org-static-blog ranger sqlup-mode yaml-mode common-lisp-snippets ac-slime cider weblorg org-plus-contrib ox-extra pdf-tools imenu-list imenu-anywhere dumb-jump pc-bufsw dired-sidebar origami dimmer slime-repl-ansi-color slime-company magit parinfer org popup-kill-ring symon dmenu diminish spaceline company dashboard rainbow-delimiters sudo-edit hungry-delete switch-window switch-windows rainbow-mode avy ido-vertical-mode smex org-bullets beacon afternoon-theme spacemacs-theme which-key use-package)))
 '(pdf-view-midnight-colors (quote ("#b2b2b2" . "#292b2e")))
 '(save-place-mode t)
 '(scroll-bar-mode nil)
 '(size-indication-mode t)
 '(tool-bar-mode nil)
 '(vc-annotate-background nil)
 '(vc-annotate-color-map
   (quote
    ((20 . "#d54e53")
     (40 . "goldenrod")
     (60 . "#e7c547")
     (80 . "DarkOliveGreen3")
     (100 . "#70c0b1")
     (120 . "DeepSkyBlue1")
     (140 . "#c397d8")
     (160 . "#d54e53")
     (180 . "goldenrod")
     (200 . "#e7c547")
     (220 . "DarkOliveGreen3")
     (240 . "#70c0b1")
     (260 . "DeepSkyBlue1")
     (280 . "#c397d8")
     (300 . "#d54e53")
     (320 . "goldenrod")
     (340 . "#e7c547")
     (360 . "DarkOliveGreen3"))))
 '(vc-annotate-very-old-color nil))

(put 'upcase-region 'disabled nil)

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:background "#000000" :foreground "#ffff80" :foundry "GOOG" :family "Noto Mono" :height 132 :width normal :weight normal :slant normal :box nil :strike-through nil :overline nil :underline nil :inverse-video nil :inherit nil :stipple nil))))
 '(bold ((t (:weight normal))))
 '(font-lock-builtin-face ((t (:foreground "#ff4040"))))
 '(font-lock-comment-face ((t (:foreground "#ffffff"))))
 '(font-lock-constant-face ((t (:foreground "#c397d8" :weight normal))))
 '(font-lock-doc-face ((t (:foreground "#ffa040"))))
 '(font-lock-function-name-face ((t (:foreground "#ffff80" :weight normal))))
 '(font-lock-keyword-face ((t (:foreground "#00A0ff" :weight normal))))
 '(font-lock-string-face ((t (:foreground "#00c000"))))
 '(font-lock-warning-face ((t (:foreground "#ff0000" :weight normal)))))
