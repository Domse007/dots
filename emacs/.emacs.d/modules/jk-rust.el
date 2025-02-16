;; Rust

(use-package rustic
  :custom
  ((rustic-format-on-save t)
   (rustic-format-trigger 'on-save)
   (rustic-lsp-client 'eglot)
   )
  :bind
  (:map rustic-mode-map
        ("M-j" . lsp-ui-imenu)
        ("M-?" . lsp-find-references)
        ("C-c C-c l" . flycheck-list-errors)
        ("C-c C-c a" . lsp-execute-code-action)
        ("C-c C-c r" . lsp-rename)
        ("C-c C-c q" . lsp-workspace-restart)
        ("C-c C-c Q" . lsp-workspace-shutdown)
        ("C-c C-c s" . lsp-rust-analyzer-status))
  :hook
  ((rustic-mode-hook . lsp)))

(use-package rust-auto-use
  :hook
  ((rust-mode-hook . rust-auto-use)))

(use-package toml-mode)

(use-package cargo
  :hook
  (rust-mode . cargo-minor-mode))

(provide 'jk-rust)
