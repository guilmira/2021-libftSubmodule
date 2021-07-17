/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_atoi_plus.c                                     :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: guilmira <guilmira@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2021/05/22 12:31:26 by guilmira          #+#    #+#             */
/*   Updated: 2021/07/17 17:20:58 by guilmira         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

/** PURPOSE : converts string into integer equivalent, skiping spaces and signs.
 * 1. Skip spaces, tabs and similar.
 * 2. Skip '-' and '+'. Check sign.
 * 3. Take the tring digit and add it to global number (multiplied by 10); */
int	ft_atoi_plus(char *str)
{
	unsigned int	n;
	int				sign;

	sign = 1;
	n = 0;
	while (*str == ' ' || *str == '\t' || *str == '\n' || \
	*str == '\r' || *str == '\f' || *str == '\v')
		str++;
	while (*str == '+' || *str == '-')
	{
		if (*str == '-')
			sign *= -1;
		str++;
	}
	while (ft_isdigit(*str))
	{
		n = (*str - '0') + n * 10;
		if (n > 2147483647 && sign == 1)
			return (-1);
		else if (n > 2147483648 && sign == -1)
			return (0);
		str++;
	}
	return (((int) n * sign));
}
