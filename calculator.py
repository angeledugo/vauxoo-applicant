"""
Modulo creado para crear operaciones numericas
"""


class CalculatorClass(object):
    """Clase permite ejecutar metodos que simulan el proceso
    de operaciones de  una calculadora
    """

    def sum(self, num_list):
        """este metodo recibe una lista y nos permite sumar cada uno de
        sus numeros
        """
        suma = 0
        # pylint: disable=C0103
        for n in num_list:
            suma += n
            return suma
