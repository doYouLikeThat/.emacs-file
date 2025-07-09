;; My emacs configuration file
(scroll-bar-mode 0)
(tool-bar-mode 0)
(menu-bar-mode 0)
(global-display-line-numbers-mode 1)
(electric-pair-mode 1)
(delete-selection-mode 1)
(setq ring-bell-function 'ignore)
(setq backup-directory-alist `(("." . "~/.saves")))
;;(set-frame-font "Fira Code 12" nil t)
(set-frame-font "Cascadia Code 11" nil t)
;;(set-frame-font "0xProto 10" nil t)
(global-auto-revert-mode t)
(load-theme 'handmade t)
;;Disable warnings
(setq warning-minimum-level :emergency)
;;Make backspace actually delete words and not copy them to the clipboard
(defun backward-delete-word (arg)
  "Delete characters backward until encountering the beginning of a word.
With argument ARG, do this that many times."
 (interactive "p")
  (delete-region (point) (progn (backward-word arg) (point))))
(global-set-key (kbd "C-<backspace>") 'backward-delete-word)
(global-set-key (kbd "C-z") 'undo)
p(add-to-list 'default-frame-alist '(fullscreen . maximized))

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   '("3d39093437469a0ae165c1813d454351b16e4534473f62bc6e3df41bb00ae558"
     default))
 '(package-selected-packages '(lua-mode gruvbox-theme go-mode)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
