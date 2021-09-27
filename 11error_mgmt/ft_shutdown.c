/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_shutdown.c                                      :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: guilmira <guilmira@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2021/09/24 11:24:32 by guilmira          #+#    #+#             */
/*   Updated: 2021/09/27 11:03:47 by guilmira         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

/** PURPOSE : Output error with value 1, close the program. */
void	ft_shutdown(void)
{
	ft_putstr_fd("Exiting program.\n", 1);
	exit(1);
}
