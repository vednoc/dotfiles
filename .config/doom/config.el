;;; ~/.config/doom/config.el -*- lexical-binding: t; -*-

;; Place your private configuration here

(global-visual-line-mode t)
(global-git-gutter-mode t)

(setq display-line-numbers-type nil
      git-gutter:update-interval 1
      org-log-done 'time
      org-ellipsis "..."
      org-bullets-bullet-list '("⚫" "⚪")
      org-directory "~/doc/org"
      doom-modeline-bar-width 1
      doom-modeline-major-mode-icon t
      doom-modeline-buffer-file-name-style 'truncate-upto-root
      doom-theme 'doom-sourcerer
      doom-font (font-spec :family "Iosevka" :size 14)
      doom-big-font (font-spec :family "Iosevka" :size 20))

(global-unset-key (kbd "M-/"))
(map! :nei #'evilnc-comment-or-uncomment-lines)
