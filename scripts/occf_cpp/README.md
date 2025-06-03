# OCCF Class Generator Script

A basic Shell script (`.sh`) that automatically generates the prototype and implementation of a standard C++98 class following the **Orthodox Canonical Class Form (OCCF)**. The generated class includes the five core components recommended for canonical class design.

## 📁 Generated Files

### `ClassName.hpp`

Contains the following declarations:
1. Default Constructor  
2. Parameterized Constructor *(optional)*  
3. Copy Constructor  
4. Copy Assignment Operator  
5. Destructor  

### `ClassName.cpp`

Contains the corresponding definitions:
1. Default Constructor  
2. Parameterized Constructor *(optional)*  
3. Copy Constructor  
4. Copy Assignment Operator  
5. Destructor  

> For a better understanding of the OCCF concept, here’s a highly recommended read by **@Komeno**:  
> 📚 [The Orthodox Canonical Class Form](https://riceset.com/C++/The-Orthodox-Canonical-Class-Form)

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

### 🛠️ Running the Script

To use the script, provide at least **one argument**: the desired class name. This will determine the names of the generated files (`ClassName.hpp` and `ClassName.cpp`) and the class itself.

```bash
occf ClassName
```

This will create two files in the current directory:

1. `ClassName.hpp` — with all OCCF-style class declarations

2. `ClassName.cpp` — with the corresponding definitions
