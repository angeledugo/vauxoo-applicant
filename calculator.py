"""
Modulo created to create numerical operations
"""


class CalculatorClass(object):
    """Class allows you to execute methods that simulate the process
    operations calculator
    """

    def sum(self, num_list):
        """This method receives a list and adds each of
        the values of that list. return number
        """
        suma = 0
        # pylint: disable=C0103
        for i in range(0, len(num_list)):
            suma = suma+num_list[i]

        return suma
