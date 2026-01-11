;; Install and use ef-themes
(use-package ef-themes
  :ensure t
  :defer t
  )
(add-hook 'after-init-hook (lambda () (load-theme 'ef-melissa-light t)))
