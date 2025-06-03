#!/bin/bash

# This script creates directories for C++ header (.hpp) and source (.cpp) files.
# - `hppPath` specifies the directory path for header files (default: current directory).
# - `cppPath` specifies the directory path for source files (default: current directory).

# Note:
#   - Ensure that the variables `hppPath` and `cppPath` are defined and point to the desired directories.
#   - The script removes any existing files with the same name before creating new ones.

# source ~/shell-scripts/scripts/42header/set_header.sh <- btw i hate vim

hppPath="./"
cppPath="./"

# The `mkdir -p` command ensures that the specified directories are created if they do not exist.
mkdir -p $hppPath $cppPath

# Arguments:
#   $@ - List of class names to generate files for.

# Behavior:
#   - Converts the first letter of each class name to uppercase for the header and source filenames.
#   - Converts the entire class name to uppercase for other purposes.
#   - Creates or overwrites the .hpp and .cpp files for each class.
#   - Writes a template or placeholder content into the .hpp file.
for class in "$@"
do
	capClass="$(tr '[:lower:]' '[:upper:]' <<< ${class:0:1})${class:1}"
	fcapClass="$(tr '[:lower:]' '[:upper:]' <<< ${class})"
	hpp="$hppPath$capClass".hpp
	cpp="$cppPath$capClass".cpp
	# HPP
	rm -f $hpp && touch $hpp
	cat > $hpp << EOL
#ifndef ${fcapClass}_HPP
# define ${fcapClass}_HPP

# include <iostream>

class $capClass
{
	public:
		$capClass(void);
		//$capClass(void); //Parameterized Constructor

		$capClass(const $capClass& other);
		$capClass &operator=(const $capClass &other);

		~$capClass();
};

#endif

EOL

	# CPP
	rm -f $cpp && touch $cpp
	cat > $cpp << EOL
#include "$capClass.hpp"

$capClass::$capClass(void)
{
	if (DEBUG)
		std::cout << "Default constructor called" << std::endl;
	return ;
}

//$capClass::$capClass(void) //Parameterized Constructor
//{
//	if (DEBUG)
//		std::cout << "Parameterized constructor called" << std::endl;
//	return ;
//}

$capClass::$capClass(const $capClass &other)
{
	if (DEBUG)
		std::cout << "Copy constructor called" << std::endl;
	(void) other;
	return ;
}

$capClass &$capClass::operator=(const $capClass &other)
{
	if (DEBUG)
		std::cout << "Assignment operator called" << std::endl;
	(void) other;
	return (*this);
}

$capClass::~$capClass(void)
{
	if (DEBUG)
		std::cout << "Destructor called" << std::endl;
	return ;
}

EOL
done

printf "\n$# classes created:\n\n"
for class in "$@"
do
	vim -c :Stdheader +:wq "$@.cpp"
	vim -c :Stdheader +:wq "$@.hpp"
	echo "$capClass.hpp/.cpp"
done