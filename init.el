(require 'package)

(setq package-enable-at-startup nil)

(add-to-list 'package-archives
             '("melpa" . "https://melpa.org/packages/"))
(package-initialize)

(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

(when (file-readable-p "~/.emacs.d/config.org")
  (org-babel-load-file (expand-file-name "~/.emacs.d/config.org")))

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-faces-vector (scroll-bar-mode -1))
 '(blink-cursor-mode nil)
 '(column-number-mode t)
 '(custom-enabled-themes (quote (spacemacs-dark)))
 '(custom-safe-themes
   (quote
    ("2540689fd0bc5d74c4682764ff6c94057ba8061a98be5dd21116bf7bf301acfb" "bffa9739ce0752a37d9b1eee78fc00ba159748f50dc328af4be661484848e476" default)))
 '(display-battery-mode t)
 '(display-line-numbers-type nil)
 '(display-time-mode t)
 '(doc-view-continuous t)
 '(fci-rule-color "#14151E")
 '(fringe-mode 0 nil (fringe))
 '(global-display-line-numbers-mode t)
 '(package-selected-packages
   (quote
    (parinfer org popup-kill-ring symon dmenu diminish spaceline company dashboard rainbow-delimiters sudo-edit hungry-delete switch-window switch-windows rainbow-mode avy ido-vertical-mode smex org-bullets beacon afternoon-theme spacemacs-theme which-key use-package)))
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
 '(default ((t (:background "#000000" :foreground "#ffffff" :foundry "GOOG" :family "Noto Mono" :height 120 :width normal :weight normal :slant normal :box nil :strike-through nil :overline nil :underline nil :inverse-video nil :inherit nil :stipple nil))))
 '(bold ((t (:weight normal))))
 '(font-lock-comment-face ((t (:background "#000000" :foreground "#a0e0e0")))))
