/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_shutdown.c                                      :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: guilmira <guilmira@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2021/09/24 11:24:32 by guilmira          #+#    #+#             */
/*   Updated: 2021/09/24 11:25:05 by guilmira         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

/** PURPOSE : Output error with value 1, close the program. */
void	ft_shutdown(void)
{
	ft_putstr_fd("Error\n", 1);
	exit(1);
}
