"""
Modulo que se encarga de tratado de numeros
"""


class PrimeClass(object):
    """
    En esta clase trabajaremos los numeros
    """
    def is_prime(self, num_int):
        """
        Funcion que determina si un numero es primo
        debe recibir un numero entero
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
