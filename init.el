(package-initialize)

;; Repositórios de pacotes
(unless (assoc-default "melpa" package-archives)
  (add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t))
(unless (assoc-default "org" package-archives)
  (add-to-list 'package-archives '("org" . "https://orgmode.org/elpa/") t))
(package-refresh-contents)

;; Instalar Pacote para manipulação de Pacotes
(unless (package-installed-p 'use-package)
  (package-install 'use-package))
(setq use-package-verbose t)
(setq use-package-always-ensure t)

;; Adicionando tema e aparência

(use-package doom-themes
	     :config
	     (setq doom-themes-enable-bold t
		   doom-themes-enable-italic t)
	     (load-theme 'doom-one t)
	     (doom-themes-visual-bell-config)
	     )
(use-package powerline
	     :config
	     (powerline-default-theme)
	     )


