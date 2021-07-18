/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_free_split.c                                    :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: guilmira <guilmira@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2021/07/18 07:44:40 by guilmira          #+#    #+#             */
/*   Updated: 2021/07/18 08:11:30 by guilmira         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

/** PURPOSE : frees spaces allocated for split. */
void	ft_free_split(char **table)
{
	int	w;

	w = -1;
	while (table[++w])
		free(table[w]);
	free(table);
}
