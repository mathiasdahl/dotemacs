(put 'erase-buffer 'disabled nil)
(put 'scroll-left 'disabled nil)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(c-basic-offset 3)
 '(comint-input-ring-size 10000)
 '(delete-active-region nil)
 '(delete-by-moving-to-trash t)
 '(dired-dnd-protocol-alist nil)
 '(icomplete-mode t)
 '(indent-tabs-mode nil)
 '(inhibit-startup-screen t)
 '(iswitchb-mode t)
 '(menu-bar-mode nil)
 '(mouse-drag-copy-region t)
 '(read-buffer-completion-ignore-case t)
 '(show-paren-mode t)
 '(tool-bar-mode nil)
 '(winner-mode t))

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

(global-set-key [f1]         (lambda ()
                               (interactive)
                               (switch-to-buffer nil)))

(global-set-key [f2]         'other-window)
(global-set-key [f3]         'switch-to-buffer)

(global-set-key [f5]         (lambda ()
                               (interactive)
                               (if (and (buffer-modified-p)
                                        (not (eq 'dired-mode major-mode)))
                                   (error "Buffer has unsaved changes")
                                 (kill-buffer (current-buffer)))))

(global-set-key [f9]         'toggle-truncate-lines)

;; Convenient window handling. I seldom use the C-N shortcuts for
;; providing an universal argument anyway, and I have M-N still if I
;; need quick access.

(global-set-key (kbd "C-1")  'delete-other-windows)
(global-set-key (kbd "C-2")  'split-window-below)
(global-set-key (kbd "C-3")  'split-window-right)
(global-set-key (kbd "C-0")  'delete-window)

;; Zoom in and out with the mouse

(global-set-key [C-wheel-up]   'text-scale-increase)
(global-set-key [C-wheel-down] 'text-scale-decrease)

(require 'package)

(add-to-list 'package-archives
             '("melpa" . "https://melpa.org/packages/"))

(when (< emacs-major-version 24)
  ;; For important compatibility libraries like cl-lib
  (add-to-list 'package-archives '("gnu" . "http://elpa.gnu.org/packages/")))

(package-initialize)
