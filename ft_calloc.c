/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_calloc.c                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: guilmira <guilmira@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2021/05/22 13:06:38 by guilmira          #+#    #+#             */
/*   Updated: 2021/06/22 12:21:27 by guilmira         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

/** PURPOSE : allocates memory, then fills it with 0.
 * 1. Casts malloc to return an UNSIGNED CHAR pointer.
 * 2. Uses ft_bzero to fill with zero.
 * */
void	*ft_calloc(size_t count, size_t size)
{
	unsigned char	*ptr;

	ptr = (unsigned char *) malloc(count * size);
	if (ptr == 0)
		return (0);
	ft_bzero(ptr, count * size);
	return (ptr);
}
