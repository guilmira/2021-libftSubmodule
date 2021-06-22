/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_count_digits.c                                  :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: guilmira <guilmira@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2021/06/22 10:55:46 by guilmira          #+#    #+#             */
/*   Updated: 2021/06/22 10:55:55 by guilmira         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

/** PURPOSE : counts digits of an int (iterative) */
int	ft_count_digits(int n)
{
	int	digits;

	digits = 1;
	while (n /= 10)
		digits++;
	return (digits);
}
