# Repository under construction!!

## Shell Scripts
>>Explain the purpose of the repo<<
---

### Directory structure
shell-scripts/
├── README.md         ← General instructions and aliases to paste into .bashrc
├── aliases.sh        ← File that can be sourced directly in .bashrc
├── scripts/
│   ├── occf_cpp/
│   │   ├── occf.sh
│   │   └── README.md
│
└── LICENSE

---

## 🔧 Usage

### One-time Setup

To include the helper aliases in your current shell session, run:

```bash
source aliases.sh
```

Or include only the specific script directly:

```bash
source "~/shell-scripts/scripts/@script_folder/@script_name.sh"
```