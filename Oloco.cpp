#include "Oloco.hpp"

Oloco::Oloco(void)
{
	std::cout << "Default constructor called" << std::endl;
	return ;
}

Oloco::Oloco(void) //Parameterized Constructor
{
	std::cout << "Default constructor called" << std::endl;
	return ;
}

Oloco::Oloco(const Oloco &other)
{
	std::cout << "Copy constructor called" << std::endl;
	(void) other;
	return ;
}

Oloco &Oloco::operator=(const Oloco &other)
{
	std::cout << "Assignment operator called" << std::endl;
	(void) other;
	return (*this);
}

Oloco::~Oloco(void)
{
	std::cout << "Destructor called" << std::endl;
	return ;
}

