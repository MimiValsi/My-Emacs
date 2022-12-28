# My-Emacs

Change init.bkup to init.el

# Change the follwing parameters
```
(setq user-mail-address "foo@bar.net")
(setq user-full-name "Name")
(setq message-kill-buffer-on-exit t)
(setq message-user-fqdn "myspace.foo.net")

;; Config and receive emails
(setq gnus-select-method<p>
        '(nnimap "foo@bar.net"
                (nnimap-address "mail.foo.com")
                (nnimap-server-port 993)
                (nnimap-stream ssl)
                (nnir-search-engine imap)
                (nnimap-inbox "Inbox")
                (nnmail-expiry-target
                 "nnimap+bar:Trash")
                (nnmail-expiry-wait immediate)))

;; Send emails
(setq smtpmail-default-smtp-server "mail.foo.com")
(setq smtpmail-smtp-server "mail.foo.com")
(setq smtpmail-stream-type 'starttls)
(setq smtpmail-smtp-service 587)
(setq smtpmail-retries 7)
(setq smtpmail-queue-mail nil)
(setq send-mail-function 'smtpmail-send-it)
(setq message-send-mail-function 'smtpmail-send-it)
```
