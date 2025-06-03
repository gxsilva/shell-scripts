#ifndef OLOCO_HPP
# define OLOCO_HPP

# include <iostream>

class Oloco
{
	public:
		Oloco(void);
		Oloco(void); //Parameterized Constructor

		Oloco(const Oloco& other);
		Oloco &operator=(const Oloco &other);

		~Oloco();
};

#endif

