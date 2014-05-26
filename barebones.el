(put 'erase-buffer 'disabled nil)
(put 'scroll-left 'disabled nil)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(c-basic-offset 3)
 '(indent-tabs-mode nil)
 '(inhibit-startup-screen t)
 '(iswitchb-mode t)
 '(menu-bar-mode nil)
 '(show-paren-mode t)
 '(tool-bar-mode nil)
 '(delete-active-region nil)
 '(delete-by-moving-to-trash t)
 '(dired-dnd-protocol-alist nil)
 '(mouse-drag-copy-region t)
 '(winner-mode t))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

(global-set-key [f1] (lambda ()
                       (interactive)
                       (switch-to-buffer nil)))
(global-set-key [f2] 'other-window)
(global-set-key [f3] 'iswitchb-buffer)
(global-set-key [f5] (lambda ()
                       (interactive)
                       (if (and (buffer-modified-p)
                                (not (eq 'dired-mode major-mode)))
                           (error "Buffer has unsaved changes")
                         (kill-buffer (current-buffer)))))
(global-set-key [f9] 'toggle-truncate-lines)

