"""
Module that handles numbers treaty
"""


class PrimeClass(object):
    """In this class we will work numbers
    """
    def is_prime(self, num_int):
        """Function that determines whether a number is prime you must receive
        an integer return boolean
        """
        # pylint: disable=C0103
        rango = range(2, num_int)
        if num_int == 1:
            return False
        elif num_int == 2:
            return True
        else:
            for elementos in rango:
                if num_int % elementos == 0:
                    return False
                else:
                    if elementos == num_int - 1:
                        return True
